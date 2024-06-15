use Test;

use Text::Wrap;

plan 2;

my ($txt, $exp, $res);

$txt = "foo bar baz quux test 123";
$exp = "foo bar\nbaz quux\ntest 123",
$res = wrap-text $txt, :width(10);
is $res, $exp, "no postfix";

$txt = "foo bar baz quux test 123";
$exp = "foo bar⤶\nbaz quux⤶\ntest 123",
$res = wrap-text $txt, :width(10), :postfix('⤶');
is $res, $exp, 'Postfix ⤶';
