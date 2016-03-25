use v6;
use Test;

use lib 'lib';
use Hello;

is-deeply(
    Hello.^methods().map({ .name }).sort,
    ('greet',).sort,
    "Class 'Hello' implements methods"
);

isa-ok(Hello.new(), Hello);

{
    my $hello = Hello.new();
    is($hello.greet(), 'Hello world!', 'greet()');
}

done-testing();

# vim:syntax=perl6:softtabstop=4:shiftwidth=4
