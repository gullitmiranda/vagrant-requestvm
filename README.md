vagrant-requestvm
============================

Vagrant Box utilizado pela [Requestdev Sistemas](http://www.requestdev.com.br/) baseado no Ubuntu Precise 64.

Como usar?
-----------

1. Instale [VirtualBox](http://www.virtualbox.org/)
2. Instale [vagrant](http://vagrantup.com/)
3. Adicione a requestvm a suas boxes

        vagrant box add requestvm /Users/gullitmiranda/Cloud\ Drive/requestdev/boxes/requestvm.box
4. Inicialize o vagrant no diretório do seu projeto

        vagrant init requestvm
5. Execulte-a!

        vagrant up

Informações da box
-----------
- hostname: ` requestvm `
- ip: ` 192.168.33.33 `

Diretórios compartilhados:
  # Diretório root do servidor nginx,
  # todos os arquivos a serem execultados utilizando o servidor nginx deverá estar dentro desse diretório
      /www

Softwares Instalados:
-----------
    ## Ferramentas
      Git version 1.7.10.2 (Apple Git-33)
      ImageMagick 6.6.9-7
      VIM - Vi IMproved 7.3
      MailCatcher v0.5.10

    ## Linguagens ou Frameworks
      Ruby 2.0.0p0 (2013-02-24 revision 39474) [x86_64-linux]
      Rails 3.2.13
      Node v0.6.12
      PHP 5.3.10-1ubuntu3.6 with Suhosin-Patch (cli) (built: Mar 11 2013 14:31:48)

    ## Bando de dados
      MySQL 5.5.29-0ubuntu0.12.04.2 (Ubuntu)
      PostgreSQL 9.2.1
      MongoDB shell version: 2.4.1
      Sqlite 3.7.9

Dados de Acesso
----------
    ## Mongo
      host: 192.168.33.33
      porta: 27017
      user: admin
      senha: admin

    ## MySQL
      host: 192.168.33.33
      porta: 3306
      user: root
      senha: root

    ## Postgres
      host: 192.168.33.33
      porta: 5432
      user: postgres
      senha: postgres

    ## MailCatcher
      SMTP: smtp://192.168.33.33:1025
      Web: http://192.168.33.33:1080


    # Para acesso remoto no mongo é necessário se conectar através do ssh e
    # criar o usuário "admin" com a senha "admin"
    vagrant ssh
    mongo
    use admin
    db.addUser("admin", "admin")

Maintainer
----------

* Gullit Miranda (https://github.com/gullitmiranda)

License
-------

(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
