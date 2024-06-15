use Test;

use Text::Wrap;

plan 2;

my ($txt, $exp, $res);

$txt = "foo\nbar\nbaz\n\n123\n 456 789";
$exp = "foo bar baz\n\n123 456 789";

$res = wrap-text $txt, :width(80);
is $res, $exp, "keep paragraphs";

$txt = "foo\nbar\nbaz\n\n123\n 456 789";
$exp = "foo bar baz 123 456 789";
$res = wrap-text $txt, :width(80), :paragraph(Regex:U);
is $res, $exp, "discard paragraphs";
