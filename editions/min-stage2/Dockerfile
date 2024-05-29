FROM ghcr.io/<OWNER>/image-debian-<CODE_NAME>-min-stage1
MAINTAINER Ruby On Racetracks

COPY usr_local_bin/* /usr/local/bin/

# sync: needed to avoid "text file busy" error
RUN sudo chmod +x /usr/local/bin/*; sync; wait; sudo /usr/local/bin/<ABBREV>-root;
USER <REGULAR_USER>

WORKDIR /home/<REGULAR_USER>
