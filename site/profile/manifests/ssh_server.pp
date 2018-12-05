class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDPPm5XY0g69t063XDF4ZDjvmTDIBmH0s2xiWKnD0V67MlK281pTyMLJBR/Cpc92vvvH6sc2t6pC1e6uU2UCHgMrEtQUqzL99Gd6R0mHpiEvj7z4Q5/hXmiNpQZLiM4MZUqh1beNV0b+VeSmsfrcRQu8EZo3+TfrX3vnLB01XMbeeLD6Pud3dzjeu2rNGNtY7xeRdT8KGIezRpmGoREENP3lk5dZmA2vqwQVYZdLMYwG7Ne4PrvF00w9RPhF2xFO7DEVu58nVu3jtAYAprkH0ftPOyjFI9Rwxwz7SmQUQaT6KFXqB3GfVegXgL6zV9++JBDB4+msYHGFKQl0xE0iHLp',
	}  
}
