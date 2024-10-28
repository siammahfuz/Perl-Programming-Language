perl_code = """
#!/usr/bin/perl
use strict;
use warnings;

# 1. Basic Syntax: Hello World and Variable Declaration
print "Hello, World!\\n";
my $name = "Perl Programmer";
print "Welcome, $name!\\n\\n";

# 2. Control Structures: If-Else, For, While
my $age = 25;
if ($age > 18) {
    print "You are an adult.\\n";
} else {
    print "You are a minor.\\n";
}

for (my $i = 0; $i < 5; $i++) {
    print "Counting: $i\\n";
}

my $count = 0;
while ($count < 3) {
    print "While loop count: $count\\n";
    $count++;
}
print "\\n";

# 3. Data Structures: Arrays and Hashes
my @fruits = ('Apple', 'Banana', 'Cherry');
print "Fruits: @fruits\\n";
my %ages = ('Alice' => 30, 'Bob' => 25, 'Charlie' => 35);
print "Alice's age is $ages{'Alice'}\\n\\n";

# 4. File Handling: Read and Write to File
open(my $fh, '>', 'output.txt') or die "Cannot open file for writing: $!";
print $fh "This is a line in the output file.\\n";
close $fh;
open(my $rfh, '<', 'output.txt') or die "Cannot open file for reading: $!";
while (my $line = <$rfh>) {
    print "Reading from file: $line";
}
close $rfh;
print "\\n";

# 5. Regular Expressions: Match and Substitute
my $text = "The quick brown fox jumps over the lazy dog.";
if ($text =~ /fox/) {
    print "Found 'fox' in the text.\\n";
}
$text =~ s/lazy/energetic/;
print "Modified text: $text\\n\\n";

# 6. Common Functions: map, grep, split, join
my @numbers = (1, 2, 3, 4, 5);
my @squared = map { $_ * $_ } @numbers;
print "Squared numbers: @squared\\n";
my @evens = grep { $_ % 2 == 0 } @numbers;
print "Even numbers: @evens\\n";
my $sentence = "This is a simple sentence.";
my @words = split(' ', $sentence);
print "Words in sentence: @words\\n";
my $joined_sentence = join('-', @words);
print "Joined sentence: $joined_sentence\\n\\n";

# 7. Subroutines: Defining and Using Functions
sub greet {
    my ($person) = @_;
    print "Hello, $person!\\n";
}
greet("Alice");
greet("Bob");
print "\\n";

# 8. Modules: Using File::Find for Directory Traversing
use File::Find;
my $dir = '.';
find(sub { print "Found file: $File::Find::name\\n" }, $dir);

# 9. Sample Script: Data Processing
my @data = (1, 2, 3, 4, 5);
my $sum = 0;
$sum += $_ for @data;
my $average = $sum / @data;
print "Sum: $sum, Average: $average\\n";

# End of Perl script
print "\\nScript executed successfully.\\n";
"""

# Saving to a .pl file in the /mnt/data directory for download.
file_path = "/mnt/data/all_perl_examples.pl"
with open(file_path, "w") as file:
    file.write(perl_code)