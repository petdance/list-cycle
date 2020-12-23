# Validate with cpanfile-dump
# https://metacpan.org/release/Module-CPANfile

requires 'Carp' => 0;

on 'test' => sub {
    requires 'Test::More', '0.98';  # So we can run subtests on v5.10
};

# vi:et:sw=4 ts=4 ft=perl
