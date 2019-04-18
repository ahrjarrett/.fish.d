function curlN
  echo "curling url: $argv[1] $argv[2]" 
  for i in (seq 1 $argv[1])
    curl -XPURGE -H 'Fastly-Soft-Purge: 1' $argv[2] 
    sleep 1
  end
end

#curlpurge() {
#  curl -XPURGE -H 'Fastly-Soft-Purge: 1' $1
#}
#
#curlN() {
#  for ((i=1;i<=$1;i++));
#  do curl -XPURGE -H 'Fastly-Soft-Purge: 1' $2;
#  sleep 1;
#  done
#}
