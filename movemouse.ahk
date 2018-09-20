F8::goto % (t:=!t) ? "start" : "stop"
start:
	SetTimer,look,-1
	SetTimer,spam,-1
  return
stop:
	SetTimer,look,Off
	SetTimer,spam,Off
  return
look:
	SetTimer,look,300
	MouseMove, 944, 587
	MouseMove, 0, 50,50, R
	sleep,3000
	MouseMove, 0, -50,50, R
	send,a
  return
spam:
	SetTimer,spam,100
	Click
	send,b
  return
Esc::ExitApp




;944,587