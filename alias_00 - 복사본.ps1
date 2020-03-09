echo ""
echo "start copy img"

$user = "gantry"
$pw = ConvertTo-SecureString -AsPlainText -Force "gus@3961"
$ipAddress = "192.168.0.57"
$credential = New-Object System.Management.Automation.PSCredential($user, $pw)
$session = New-PSSession $ipAddress -Credential $credential
$load_img = "/home/gantry/edge_iot01/img/*.png"
$load_raw = "/home/gantry/edge_iot01/raw/*.png"
$save_img = 
$save_raw = 

#로컬에 있는 파일을 서버에 복사에서 올리는 방법
Copy-Item "복사시키는 파일Path" -Destination "목적지(서버의 파일Path)" -ToSession $session -Recurse

#서버에 있는 파일을 내컴퓨터(로컬)에 복사하고 싶을 때
Copy-Item -FromSession $session -Path "복사시키는 파일(서버의 파일Path)" -Destination "로컬 저장위치" -Force -Recurse

#세션 종료
Remove-PSSession $session