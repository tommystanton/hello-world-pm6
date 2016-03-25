use v6;
use Test;

use lib 'lib';
use Hello;

is-deeply(
    Hello.^methods().map({ .name }).sort,
    ('greet', 'name',).list.sort,
    "Class 'Hello' implements methods"
);

is-deeply(
    Hello.^attributes().map({ .name.substr(2) }).sort,
    ('name',).list.sort,
    "Class 'Hello' has attributes"
);

isa-ok(Hello.new(), Hello);

{
    my $hello = Hello.new();
    is($hello.greet(), 'Hello world!', 'greet()');
}

{
    my $hello = Hello.new(name => 'Bob');
    is($hello.greet(), 'Hello Bob!', 'greet() with name');
}

done-testing();

# vim:syntax=perl6:softtabstop=4:shiftwidth=4
