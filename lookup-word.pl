#!/usr/bin/env perl
# File: lookup-word.pl
# Time-stamp: <2016-05-21 14:00 Saturday liuhui>
# Description: lookup selected word

use strict;
use warnings;
use 5.010;

# system "notify-send", "-t", "10", "test", "begin";

my $winTitle;
$winTitle = `xdotool getwindowfocus getwindowname`;
chomp $winTitle;

# system "notify-send", "-t", "10", "test", "$winTitle";

my $word;

if ($winTitle =~ '福昕阅读器') {
    system "xdotool key --delay 200 ctrl+c";
    $word = `xclip -o -selection "clipboard"`;
} else {
    $word = `xclip -o`;
}
# system "notify-send", "-t", "10", "test", "$word";

system "goldendict", "$word";
