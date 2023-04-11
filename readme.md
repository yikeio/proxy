## 启动方式
```bash
docker run --name yike-proxy {IMAGE} 
```

## 环境变量
- PROXY_BUFFERING: 是否开启缓存，默认为 off
- PROXY_PASS: 转发地址，默认为 https://api.openai.com
- ALLOW_IPS: 允许访问的 IP 地址，默认为 all
