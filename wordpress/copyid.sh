for os in centos ubuntu 
do 
    for instance in 1 2 3
    do
        for user in ansible root
        do
            sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}
        done
    done
done