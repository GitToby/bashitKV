# bashitKV - probably the smallest database in the world 🚀

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Made with Bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/)

> The minimalist's key-value store. Because sometimes, less is more. Way more.

Out of frustration with overengineered "modern tools", we present a dead simple local* KV database that might even be ACID compliant (in your face mongoDB 😉). 4 lines of code is all you need to be ready to store your wildest dreams, and that includes 33% more code than is really needed!

_*optionally distributed, see below..._

## 🚀 Quick Start

```bash
curl <github repo raw> | source
```

or install in your terminal:

```bash 
curl <github repo raw> > ~/bashitKV.sh && echo "source ~/bashitKV.sh" >> ~/.bashrc
```

## 💫 Features

- **Blazingly Fast**: It's basically just your filesystem
- **Zero Dependencies**: No npm install, no package.json, no problem
- **ACID Compliant**: (probably)
- **Native Permissions**: Built right into your OS
- **Cloud Ready**: Through the power of NFS

## 📚 API Reference

### Create/Update

```bash
bashit_set mykey myvalue
bashit_set mykey2 1234
bashit_set mykey3 $(date)
bashit_set mykey4 $(curl -s example.com)
```

### Read

```bash
bashit_get mykey
```

Or search through your data:

```bash
bashit_scan filter_kw
```

### Delete

```bash
bashit_delete mykey
```

## 🔒 Security

bashitKV leverages your OS's built-in permission system. Want to protect your keys?

```bash
chmod 006 mykey
```

## 💾 Backups

Enterprise-grade backup solution included:

```bash
cp -R ~/.database ~/.bkup
```

## 🌐 Distributed Systems

Need horizontal scaling? I've got you covered:

[NFS](https://en.wikipedia.org/wiki/Network_File_System) - Because if it's good enough for the 80s, it's good enough for your microservices.

## ⚡ Performance Benchmarks

Coming soon™

## 🤝 Contributing

PRs are welcome! Whether it's fixing a typo or adding that one feature that makes bashitKV web scale, we'd love to have your contributions. Remember less is more, id like to get bashitKV as close as possible to the [nocode](https://github.com/kelseyhightower/nocode) ethos.

## ⚠️ Disclaimer

This is an educational piece on how simple databases can be. With 4 lines of code we can create a persistent KV store and explain how simple datastores actually work. I initially made this as a [joke blog post](https://tobydevlin.com/blog/python-inline-script-metadata-format) to explain that even complex systems like postgres and mariadb are just files and processes. All you do as a software engineer is read or write or do silly sums in more and more complex ways - there is no magic.


While I wouldn't recommend it for your next unicorn startup's production environment, I'd love to hear implementation stories if you try it anyway!

## 📜 License

MIT - Do what you want and maybe give us a shout out.

---

Made with ❤️ and sarcasm
