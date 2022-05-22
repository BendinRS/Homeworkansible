git clone https://github.com/BendinRS/Homeworkansible.git
cd Homeworkansible
vagrant up
ansible-playbook roles/bendin/tests/test.yml 
curl http://192.168.2.150:8080
curl http://192.168.2.151:8080