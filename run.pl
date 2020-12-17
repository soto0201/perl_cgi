use Plack::App::CGIBin;
use Plack::Builder;
 
my $app = Plack::App::CGIBin->new(root => "./test")->to_app;
builder {
    mount "/" => $app;
};
