FROM perl:5.20
WORKDIR /usr/src/app
RUN curl -fsSL --compressed https://git.io/cpm | perl - install -g App::cpm
RUN cpm install -g Plack::App::WrapCGI CGI::Emulate::PSGI CGI::Compile
CMD [ "plackup", "run.pl" ]
