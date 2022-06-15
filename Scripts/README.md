This directory contains the whole recipe to replay the ProxyShell attack on a lab Exchange Server.


exploit.py is the main attack script, conducting the whole exploit of the vulnerability chain.


python_server_auth.py is a web server accepting POST requests and handling POST body by exporting it as a file on the machine it runs on.


ResourceHandler.aspx is a web page allowing to drop binary executable files by POSTing B64-encoded binaries.


PowerShell commands are sample PowerShell commands to run once the server is attacked.
