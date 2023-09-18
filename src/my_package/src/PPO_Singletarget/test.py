import Config

folderName = ('try_wpaV1_Studnet_'+str(Config.Clutch_factor)+str(Config.hidden_size_1) +'*'+ str(Config.hidden_size_2) +'*'+ str(Config.hidden_size_3) + '->' + str(Config.Student_hidden_size_1) +'*'+ str(Config.Student_hidden_size_2) +'*'+ str(Config.Student_hidden_size_3) +'_' + Config.date_time + str(Config.pd_buffer_size))

filePath = './models/' + folderName
file = open('hello.txt', 'w')    # hello.txt 파일을 쓰기 모드(w)로 열기. 파일 객체 반환
file.write('Hello, world!')      # 파일에 문자열 저장
file.close() 