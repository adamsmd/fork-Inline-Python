#!/usr/bin/env perl6

use v6;
use Inline::Python;

say '1..2';

EVAL 'print("ok 1 - EVAL eval"); import sys; sys.stdout.flush()', :lang<Python>, :mode<file>;

my $py = Inline::Python.new();
$py.run('print("ok 2 - direct eval"); import sys; sys.stdout.flush()', :file);

# vim: ft=perl6
