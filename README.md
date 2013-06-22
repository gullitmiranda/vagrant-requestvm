vagrant-requestvm
============================

Vagrant Box utilizado pela [Requestdev Sistemas](http://www.requestdev.com.br/) baseado no Ubuntu Precise 64.

Bash profile personalizado
-----------

Para efetuar a instalação do bash personalizado execulte o seguinte comando no terminal:

      $ curl https://raw.github.com/gullitmiranda/vagrant-requestvm/master/install.sh | bash -s

Como usar?
-----------

1. Instale [VirtualBox](http://www.virtualbox.org/)
2. Instale [vagrant](http://vagrantup.com/)
3. Adicione a requestvm a suas boxes

        vagrant box add requestvm https://docs.google.com/uc?id=0B3QSQSB1aG2lRHlubHR5U2NXTzA
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
      Git version 1.7.9.5
      ImageMagick 6.6.9-7
      VIM - Vi IMproved 7.3
      MailCatcher v0.5.12
      Heroku Toolbelt v2.39.0 (x86_64-linux) ruby/1.9.3
      xclip

    ## Linguagens ou Frameworks
      Ruby 2.0.0p195 (2013-05-14 revision 40734) [x86_64-linux]
      Rails 3.2.13
      Node v0.10.9
      PHP 5.3.10-1ubuntu3.6 with Suhosin-Patch (cli) (built: Mar 11 2013 14:31:48)

    ## Bando de dados
      MySQL Ver 14.14 Distrib 5.5.31, for debian-linux-gnu (x86_64) using readline 6.2
      PostgreSQL 9.1.9
      MongoDB shell version: 2.4.3
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
