import math
import torch
from torch.distributions.kl import kl_divergence
from torch.distributions import Normal

def create_log_gaussian(mean, log_std, t):
    quadratic = -((0.5 * (t - mean) / (log_std.exp())).pow(2))
    l = mean.shape
    log_z = log_std
    z = l[-1] * math.log(2 * math.pi)
    log_p = quadratic.sum(dim=-1) - log_z.sum(dim=-1) - 0.5 * z
    return log_p

def logsumexp(inputs, dim=None, keepdim=False):
    if dim is None:
        inputs = inputs.view(-1)
        dim = 0
    s, _ = torch.max(inputs, dim=dim, keepdim=True)
    outputs = s + (inputs - s).exp().sum(dim=dim, keepdim=True).log()
    if not keepdim:
        outputs = outputs.squeeze(dim)
    return outputs

def soft_update(target, source, tau):
    for target_param, param in zip(target.parameters(), source.parameters()):
        target_param.data.copy_(target_param.data * (1.0 - tau) + param.data * tau)

def hard_update(target, source):
    for target_param, param in zip(target.parameters(), source.parameters()):
        target_param.data.copy_(param.data)

def get_kl(teacher_Normal, student_Normal):
    # pi = Normal(loc=teacher_dist_info[0], scale=teacher_dist_info[1]) 
    # pi_new = Normal(student_dist_info[0], scale=student_dist_info[1])
    #print("noraml : ", pi) # Normal(loc: torch.Size([1000, 8]), scale: torch.Size([1000, 8]))
    kl = torch.mean(kl_divergence(teacher_Normal, student_Normal))
    return kl