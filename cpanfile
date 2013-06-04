requires "Browser::Open" => "0";
requires "HTTP::Request" => "0";
requires "HTTP::Request::Common" => "0";
requires "Hash::AsObject" => "0";
requires "JSON" => "0";
requires "LWP::UserAgent" => "0";
requires "List::Objects::WithUtils" => "0";
requires "Method::Signatures" => "0";
requires "Moo" => "0";
requires "Moo::Role" => "0";
requires "Net::OAuth" => "0";
requires "Types::Standard" => "0";
requires "URI" => "0";
requires "URI::Encode" => "0";
requires "URI::QueryParam" => "0";
requires "bareword::filehandles" => "0";
requires "indirect" => "0";
requires "multidimensional" => "0";
requires "perl" => "v5.10.0";
requires "strictures" => "1";

on 'test' => sub {
  requires "Test::More" => "0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.30";
};
