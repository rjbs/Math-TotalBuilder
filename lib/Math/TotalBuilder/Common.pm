use strict;
use warnings;
package Math::TotalBuilder::Common;
# ABSTRACT: common unit sets for building totals

=head1 SYNOPSIS

 use Math::TotalBuilder;
 use Math::TotalBuilder::Common;

 # units for 952 pence
 my %tender = build($Math::TotalBuilder::Common::uk_money_old, 952);

=head1 DESCRIPTION

This package is just a set of common sets of units for use with the code in
Math::TotalBuilder.

=cut

=head1 Unit Sets

=head2 currency_us

United States currency: dollar bills, coins.  The base unit is a penny.

=cut

our $currency_us = { ## no critic PackageVar
  hundred => 10000,
  fifty   =>  5000,
  twenty  =>  2000,
  ten     =>  1000,
  five    =>   500,
  two     =>   200,
  one     =>   100,
  half    =>    50,
  quarter =>    25,
  dime    =>    10,
  nickel  =>     5,
  penny   =>     1
};

=head2 time

Units of time: week, day, hour, minute, second.  The base unit is a second.

=cut

our $time = { ## no critic PackageVar
  week    => 604_800,
  day     =>  86_400,
  hour    =>   3_600,
  minute  =>      60,
  second  =>       1
};

"Here's your change.";
