<!DOCTYPE html>
<html>
<head>
	<title>Laboratório 2 - Configuração e gerenciamento de serviços de rede</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/all.min.css">
</head>
<body>
	<h1>Laboratório 2 - Configuração e gerenciamento de serviços de rede</h1>
	<p>Este laboratório tem como objetivo fornecer um ambiente virtual para prática de configuração e gerenciamento de serviços de rede, como DHCP, DNS e servidor web.</p>
php
Copy code
<h2>Tecnologias utilizadas</h2>
<ul>
	<li><i class="fab fa-ubuntu"></i> Ubuntu como sistema operacional</li>
	<li><i class="fas fa-cog"></i> Vagrant para criação do ambiente virtual</li>
	<li><i class="fas fa-dhcp"></i> DHCP para gerenciamento de endereçamento de IP</li>
	<li><i class="fas fa-globe"></i> DNS para resolução de nomes de domínio</li>
	<li><i class="fas fa-server"></i> Apache como servidor web</li>
</ul>

<h2>Pré-requisitos</h2>
<p>Para executar este laboratório, é necessário ter o Vagrant instalado em sua máquina. Para instalar o Vagrant, siga as instruções do site oficial: https://www.vagrantup.com/docs/installation</p>

<h2>Como executar</h2>
<ol>
	<li>Clone este repositório para sua máquina local:</li>
	<pre><code>git clone https://github.com/seu-usuario/lab-redes.git</code></pre>
	<li>Acesse a pasta do projeto:</li>
	<pre><code>cd lab-redes</code></pre>
	<li>Inicie a máquina virtual:</li>
	<pre><code>vagrant up</code></pre>
	<li>Acesse a máquina virtual via SSH:</li>
	<pre><code>vagrant ssh</code></pre>
	<li>Verifique se os serviços de DHCP, DNS e servidor web estão funcionando corretamente.</li>
</ol>

<h2>Estrutura do projeto</h2>
<pre><code>.
├── Vagrantfile
├── config/
│ ├── dhcpd.conf
│ ├── named.conf
│ └── named.conf.options
├── scripts/
│ ├── install-dhcp.sh
│ ├── install-dns.sh
│ └── install-webserver.sh
└── files/
├── index.html
└── example.com.zone
</code></pre>

less
Copy code
<h3>Arquivos de configuração</h3>
<ul>
	<li>dhcpd.conf: arquivo de configuração do servidor DHCP</li>
	<li>named.conf: arquivo de configuração do servidor DNS</li>
	<li>named.conf.options: arquivo de configuração das opções do servidor DNS</li>
</ul>

<h3>Scripts de instalação</h3>
<ul>
	<li>install-dhcp.sh: script de instalação e configuração do servidor DHCP</li>
	<li>install-dns.sh: script de instalação e configuração do servidor DNS</li>
	<li>install-webserver.sh: script de instalação e configuração do servidor web</li>
</ul>
<h3>Arquivos de configuração</h3>
<p>Os arquivos de configuração estão localizados na pasta <code>config/</code>:</p>
<ul>
	<li><code>dhcpd.conf</code>: arquivo de configuração do servidor DHCP</li>
	<li><code>named.conf</code>: arquivo de configuração do servidor DNS</li>
	<li><code>named.conf.options</code>: arquivo de configuração das opções do servidor DNS</li>
</ul>
<h3>Arquivos de zona</h3>
<p>Os arquivos de zona estão localizados na pasta <code>files/</code>:</p>
<ul>
	<li><code>example.com.zone</code>: arquivo de zona do domínio <code>example.com</code></li>
</ul>
<h3>Executando o projeto</h3>
<p>Para executar o projeto, siga os seguintes passos:</p>
<ol>
	<li>Clone este repositório em sua máquina local:</li>
	<pre><code>git clone https://github.com/seu-usuario/lab-network-services.git</code></pre>
	<li>Acesse a pasta do projeto:</li>
	<pre><code>cd lab-network-services</code></pre>
	<li>Inicie a máquina virtual:</li>
	<pre><code>vagrant up</code></pre>
	<li>Acesse a máquina virtual via SSH:</li>
	<pre><code>vagrant ssh</code></pre>
	<li>Para testar o servidor DHCP, execute o seguinte comando na máquina virtual:</li>
	<pre><code>sudo dhclient -v</code></pre>
	<p>Este comando solicitará um endereço IP ao servidor DHCP.</p>
	<li>Para testar o servidor DNS, abra um navegador web em sua máquina local e acesse o endereço <code>http://192.168.33.10</code>, que deve exibir a página inicial do servidor web Apache.</li>
	<li>Para testar o servidor web, abra um navegador web em sua máquina local e acesse o endereço <code>http://example.com</code>, que deve exibir a página inicial do servidor web Apache.</li>
</ol>

<h3>Considerações finais</h3>

<p>Este laboratório é apenas um exemplo básico de como configurar e gerenciar serviços de rede como DHCP, DNS e servidor web. É importante lembrar que as configurações podem variar de acordo com as necessidades do projeto e que é importante ter conhecimento em administração de redes para gerenciar serviços de rede em um ambiente de produção.</p>

<h3>Tecnologias utilizadas</h3>

<p>As seguintes tecnologias foram utilizadas neste projeto:</p>
<ul>
	<li><i class="fab fa-vagrant"></i> Vagrant</li>
	<li><i class="fab fa-linux"></i> Linux</li>
	<li><i class="fas fa-server"></i> DHCP</li>
	<li><i class="fas fa-globe"></i> DNS</li>
	<li><iclass="fas fa-globe"></i> Servidor web Apache</li>

</ul>
<h3>Passo a passo</h3>
<p>A seguir, é apresentado o passo a passo para configurar e gerenciar os serviços de rede DHCP, DNS e servidor web Apache em um ambiente virtual utilizando o Vagrant.</p>
<h4>Pré-requisitos</h4>
<ul>
	<li><a href="https://www.virtualbox.org/">VirtualBox</a> instalado</li>
	<li><a href="https://www.vagrantup.com/downloads.html">Vagrant</a> instalado</li>
</ul>
<h4>Passo 1: Clone o repositório</h4>
<p>Abra o terminal e clone o repositório do projeto:</p>
<pre><code>git clone https://github.com/seu-usuario/nome-do-repositorio.git
</code></pre>
<h4>Passo 2: Acesse o diretório do projeto</h4>
<p>Entre no diretório do projeto clonado:</p>
<pre><code>cd nome-do-repositorio
</code></pre>
<h4>Passo 3: Inicie o ambiente virtual</h4>
<p>Inicie o ambiente virtual utilizando o Vagrant:</p>
<pre><code>vagrant up
</code></pre>
<p>Este comando irá criar e configurar a máquina virtual de acordo com as especificações definidas no Vagrantfile.</p>
<h4>Passo 4: Acesse a máquina virtual</h4>
<p>Após a criação e configuração da máquina virtual, acesse-a via SSH:</p>
<pre><code>vagrant ssh
</code></pre>
<h4>Passo 5: Teste o serviço DHCP</h4>
<p>Para testar o serviço DHCP, execute o comando a seguir:</p>
<pre><code>sudo systemctl status isc-dhcp-server
</code></pre>
<p>Este comando irá verificar se o serviço está em execução. Em caso afirmativo, o resultado será algo semelhante a:</p>
<pre><code>● isc-dhcp-server.service - ISC DHCP IPv4 server
   Loaded: loaded (/lib/systemd/system/isc-dhcp-server.service; enabled; vendor preset: enabled)
   Active: active (running) since Sat 2023-05-13 18:28:19 UTC; 5s ago
     Docs: man:dhcpd(8)
 Main PID: 23922 (dhcpd)
    Tasks: 1 (limit: 2345)
   CGroup: /system.slice/isc-dhcp-server.service
           └─23922 dhcpd -user dhcpd -group dhcpd -f -q -4 -pf /run/dhcp-server/dhcpd.pid -cf /etc/dhcp/dhcpd.conf

May 13 18:28:19 debian dhcpd[23922]: Listening on LPF/eth1/08:00:27:6a:10:12/192.168.50.0/24
May 13 18:28:19 debian dhcpd[23922]: Sending on   LPF/eth1/08:00:27:6a:10:12/192.168.50.0/24
May 13 18:28:19 debian dhcpd[23922]: Sending on   Socket/fallback/fallback-net
May 13 18:28:19 debian dhcpd[23922]: Server starting service.
May 13 18:28.19 debian systemd[1]: Started ISC DHCP IPv4 server.

Feito isso, o servidor DHCP já estará funcionando e atribuindo endereços IP para os dispositivos da rede.

Configurando o servidor DNS
Para configurar o servidor DNS, basta executar o comando abaixo na pasta raiz do projeto:

arduino
Copy code
vagrant ssh dns -c "sudo /vagrant/scripts/install-dns.sh"
Este comando irá executar o script de instalação e configuração do servidor DNS que foi disponibilizado na pasta scripts. O script irá instalar o pacote bind9 e configurar o servidor DNS para responder requisições da zona example.com.

Após a instalação, será possível verificar se o servidor DNS está funcionando corretamente executando o comando abaixo:

arduino
Copy code
vagrant ssh dns -c "nslookup example.com"
Se tudo estiver funcionando corretamente, a resposta deverá ser semelhante a essa:

yaml
Copy code
Server:         10.0.2.3
Address:        10.0.2.3#53

Name:           example.com
Address:        192.168.50.10
Configurando o servidor web
Para configurar o servidor web, basta executar o comando abaixo na pasta raiz do projeto:

arduino
Copy code
vagrant ssh web -c "sudo /vagrant/scripts/install-webserver.sh"
Este comando irá executar o script de instalação e configuração do servidor web que foi disponibilizado na pasta scripts. O script irá instalar o pacote apache2 e configurar o servidor para utilizar o arquivo index.html que foi disponibilizado na pasta files.

Após a instalação, será possível verificar se o servidor web está funcionando corretamente executando o comando abaixo:

arduino
Copy code
curl http://192.168.50.10
Se tudo estiver funcionando corretamente, a resposta deverá ser semelhante a essa:

php
Copy code
<html>
  <head>
    <title>Welcome to Example.com!</title>
  </head>
  <body>
    <h1>Hello, World!</h1>
  </body>
</html>
Considerações finais
Este laboratório foi apenas um exemplo básico de como configurar e gerenciar serviços de rede como DHCP, DNS e servidor web utilizando o Vagrant. É importante lembrar que as configurações podem variar de acordo com as necessidades do projeto e que é importante ter conhecimento em SysAdmin para gerenciar servidores e equipamentos de rede em um ambiente de produção.

Tecnologias utilizadas
As seguintes tecnologias foram utilizadas neste projeto:

<ul>
	<li><i class="fab fa-vagrant"></i> Vagrant</li>
	<li><i class="fab fa-linux"></i> Linux</li>
	<li><i class="fas fa-server"></i> DHCP</li>
	<li><i class="fas fa-globe"></i> DNS</li>
	<li><i class="fab fa-apache"></i> Apache</li>
</ul>