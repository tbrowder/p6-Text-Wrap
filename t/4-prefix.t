use Test;

use Text::Wrap;

plan 3;

my ($txt, $exp, $res);

$txt = "foo bar baz quux test 123";
$exp = "foo bar\nbaz quux\ntest 123",

$res = wrap-text $txt, :width(10);
is $res, $exp;

$txt = "foo bar baz quux test 123";
$exp = "--foo bar\n--baz quux\n--test 123";

$res = wrap-text $txt, :width(10), :prefix('--');
is $res, $exp;

$txt = "foo bar baz quux test 123";
my $spaces = ' ' x 3;
$exp  = $spaces ~ "foo bar\n" ~ $spaces ~ "baz\n";
$exp ~= $spaces ~ "quux\n" ~ $spaces ~ "test\n";
$exp ~= $spaces ~ "123";

$res = wrap-text $txt, :width(10), :prefix($spaces);
is $res, $exp;
