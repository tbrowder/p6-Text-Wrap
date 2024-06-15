use Test;

use Text::Wrap;

plan 2;

my ($txt, $exp, $res);

$txt = 'abcde';
$exp = "a\nb\nc\nd\ne";
$res = wrap-text $txt, :width(1), :hard-wrap;
is $res, $exp, "hard wrap works";

$txt = 'abcde';
$exp = 'abcde';
$res = wrap-text $txt, :width(1), :!hard-wrap;
is $res, $exp, "NOT hard wrap works";
