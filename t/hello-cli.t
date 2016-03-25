use v6;
use Test;

my $proc = Proc::Async.new('perl6', 'bin/hello');
my $stdout;

$proc.stdout.tap: -> $v { $stdout ~= $v };

my $promise = $proc.start();

await $promise;

is($stdout, "Hello world!\n", 'CLI output');

done-testing();

# vim:syntax=perl6:softtabstop=4:shiftwidth=4
