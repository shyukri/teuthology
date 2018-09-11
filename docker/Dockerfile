FROM opensuse:42.3

SHELL ["/bin/bash", "-c"]
RUN zypper -n install python-devel python-pip libmysqlclient-devel git-core gcc glibc-devel
RUN pip install --upgrade pip
RUN mkdir /app
RUN git clone https://github.com/SUSE/teuthology.git /app
WORKDIR /app
RUN pip install --user --no-cache-dir -r requirements.txt
ENV PATH "$PATH:/root/.local/bin"
RUN teuthology-openstack --help
ENTRYPOINT /bin/bash
