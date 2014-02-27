#!/bin/sh -e

SOFFICE_ROOT=/usr/bin
"${SOFFICE_ROOT}/soffice" "--accept=socket,host=localhost,port=8100;urp;StarOffice.ServiceManager" --nologo --headless &
