# NAME

Hello - Implement "Hello world" in Perl 6

# SYNOPSIS

```
use Hello;

my $hello = Hello.new();
say $hello.greet(); # "Hello world!"
```

# DESCRIPTION

Run this module via its CLI program, like so:

```bash
$ perl6 bin/hello
```

Try out the test suite, like so:

```bash
$ prove --exec perl6
```

# PREREQUISITES

Perl 6 is supplied by Rakudo.

Hello was developed with Rakudo __v6.c__, using the MoarVM backend.

The `perl6` binary can be attained via
[rakudobrew](https://github.com/tadzik/rakudobrew), like so:

```bash
$ rakudobrew build moar v6.c
```

Running the tests relies on `prove`, which is supplied by Perl 5's
App::Prove.

# AUTHOR

`Tommy Stanton <tommystanton@gmail.com>`
