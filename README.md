Olá, tudo bem?

Meu nome é Pablo, sou Desenvolvedor de Software focado em automatização de processos e melhoria contínua.

Para os entendedores, eu desenvolvo com as seguintes ferramentas:
<p>
	<img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/bash/bash-original.svg" width="60" />
	<img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/python/python-plain-wordmark.svg" width="60" />
	<img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/go/go-original-wordmark.svg" width="60" />
	<img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/javascript/javascript-original.svg" width="60" />
	<img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/django/django-plain-wordmark.svg" width="60" />
	<img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/hugo/hugo-plain-wordmark.svg" width="60" />
	<img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/vscode/vscode-original.svg" width="60" />
	<img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/vim/vim-original.svg" width="60" />
    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/oracle/oracle-original.svg" width="60"/>
    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/microsoftsqlserver/microsoftsqlserver-original-wordmark.svg" width="60"/>
    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/postgresql/postgresql-original-wordmark.svg" width="60"/>
    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/mysql/mysql-plain-wordmark.svg" width="60"/>
</p>

---

## Projetos:

[Django E-Commerce](https://github.com/pablodeas/django_ecommerce_stripe "DjangoE-Commerce")
> E-Commerce para processar pagamentos utilizando a plataforma Stripe.

> Feito em: Django

![ecommerce.gif](./src/ecommerce_stripe.gif)

---

[Backup_with_Zsh](https://github.com/pablodeas/backup_with_zsh "Backup_with_Zsh")
> Programa feito para automatizar a criação de backups e upload para a cloud.

> Feito em: Shell Script, Zsh e RClone

```bash
#!/usr/bin/env zsh

# Script Name:  backup.zsh
# Author:       Pablo Andrade
# Created:      28/11/2023
# Version:      1.2

# To decompress
#tar -xzvf $bkp_file

# Debugging ON/OFF
#set -x

#script_path="$(dirname "${BASH_SOURCE[0]}")"

# Variables
project_directory=""
source "$project_directory/config.sh"

# Remove Last Backup File
function remove_last () {
	echo " --- "
	echo "-> Removing last Backup File!..."
	echo " --- "
	/usr/bin/rm -f $bkp_last
	
	if [ $? -eq 0 ]; then
		echo $msg_sucess
	else
		echo $msg_error
	fi
}

# Remove Last Log Files
function remove_logs () {
  echo " --- "
  echo "-> Removing last Log files..."
  echo " --- "
  find $project_log -type f -newermt $data -exec rm {} +

  if [ $? -eq 0 ]; then
    echo $msg_sucess
  else
    echo $msg_error
  fi
}

# Backup
function exec_bkp () {
	echo " --- "
	echo "-> Starting Backup..."
	echo " --- "
	rsync -av --progress --partial --append-verify $main_dir $bkp_dir &> $project_log/rsync_$data.log

	if [ $? -eq 0 ]; then
		echo $msg_sucess
	else
		echo $msg_error
	fi
}

# Compress
function exec_compact () {
    echo " --- "
    echo "-> Starting Compression..."
    echo " --- "
    tar --remove-files -czvf $bkp_file * &> $project_log/tar_$data.log

    if grep -q "File shrank by" $project_log/tar_$data.log; then
        echo "-> Alert: The file was compressed Successfully, but there was an alert."
    elif [ $? -eq 0 ]; then
        echo $msg_sucess
    else
        echo $msg_error
    fi
}

# Execution
remove_last
remove_logs
exec_bkp
cd $bkp_dir
exec_compact
```

---

[WControl](https://github.com/pablodeas/wcontrol_cli "WControl")
> Programa para linha de comando para registrar e manter controle das finanças.

> Feito em: Python, Shell Script, Docker e PostgreSQL

![wcontrol.gif](./src/wcontrol.gif)

---

[SensorsPy](https://github.com/pablodeas/hardware-sensors "SensorsPy")
> Programa para linha de comando para verificar a utilização de CPU, Memória RAM e Temperatura da CPU.

> Feito em: Python

![sensor.gif](./src/sensor.gif)

---

[TodoCli](https://github.com/pablodeas/todo_cli "TodoCli")
> Programa para linha de comando para registrar coisas a fazer.

> Feito em: Python e SQLite

![cli.gif](./src/todo_cli.gif)

---

## Contatos:

<p>
	<a href="https://api.whatsapp.com/send?phone=5521966916139" target="_blank" rel="noopener noreferrer">
	  <img width="48" height="48" src="https://img.icons8.com/color/48/whatsapp--v1.png" alt="whatsapp--v1">
	</a>
	<a href="mailto:pablodeas@gmail.com" target="_blank" rel="noopener noreferrer">
	  <img width="48" height="48" src="https://img.icons8.com/color/48/gmail-new.png" alt="gmail-new"/>
	</a>
	<a href="https://www.instagram.com/pablodeas" target="_blank" rel="noopener noreferrer">
	  <img width="48" height="48" src="https://img.icons8.com/fluency/48/instagram-new.png" alt="instagram-new"/>
	</a>
	<a href="https://linkedin.com.br/in/pablodeas" target="_blank" rel="noopener noreferrer">
	  <img width="48" height="48" src="https://img.icons8.com/fluency/48/linkedin.png" alt="linkedin"/>
	</a>
	<a href="https://pabo-dev.netlify.app/" target="_blank" rel="noopener noreferrer">
		<img width="48" height="48" src="https://img.icons8.com/external-flatart-icons-lineal-color-flatarticons/64/external-blog-digital-marketing-flatart-icons-lineal-color-flatarticons.png" alt="external-blog-digital-marketing-flatart-icons-lineal-color-flatarticons"/>
	</a>
	<a href="https://github.com/pablodeas" target="_blank" rel="noopener noreferrer">
		<img width="48" height="48" src="https://img.icons8.com/fluency/48/github.png" alt="github"/>
	</a>
</p>