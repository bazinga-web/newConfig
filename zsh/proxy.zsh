# set proxy
proxy ()  {
  export http_proxy="http://127.0.0.1:$1"
  export https_proxy="http://127.0.0.1:$1"
  echo "HTTP Proxy on"
}

# set noproxy
noproxy () {
  unset http_proxy
  unset https_proxy
  echo "HTTP Proxy off"
}
