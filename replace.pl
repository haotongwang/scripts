#!perl.exe
use strict;
use warnings;

$/ = undef;
my $data = <STDIN>;
$data =~ s/((?:<!-- no-align -->\n)?(?:<!-- no-amp -->\n)?\$\$[^\$]*?\$\$)/rep($1)/ge;
print $data;

sub rep {
    my $math = $_[0];

    if ($math =~ m/(<!-- no-align -->\n)/) {
        $math =~ s/\$\$/\\begin{gather*}/;
        $math =~ s/\$\$/\\end{gather*}/;
        return $math;
    }

    $math =~ s/\$\$/\\begin{align*}/;
    $math =~ s/\$\$/\\end{align*}/;
    if ($math !~ m/(<!-- no-amp -->\n)/) {
        $math =~ s/([=~<>]|\\nless|\\ngtr|\\leq|\\geq|\\leqslant|\\geqslant|\\nleq|\\ngeq|\\nleqslant|\\ngeqslant|\\prec|\\succ|\\nprec|\\nsucc|\\preceq|\\succeq|\\npreceq|\\nsucceq|\\ll|\\gg|\\lll|\\ggg|\\subset|\\supset|\\not|\\subset|\\not|\\subset|\\not|\\subset|\\not|\\supset|\\not|\\supset|\\not|\\supset|\\subseteq|\\supseteq|\\nsubseteq|\\nsupseteq|\\sqsubset|\\sqsupset|\\sqsubseteq|\\sqsupseteq|\\rightarrow|\\Rightarrow|\\leftrightarrow|\\Leftrightarrow)/&$1/g;
        $math =~ s/\\&&//g;
    }
    $math =~ s/\\&/&/g;
    return $math;
}
