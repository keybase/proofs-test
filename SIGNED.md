##### Signed by https://keybase.io/max
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAABCgAGBQJVVl/LAAoJEJgKPw0B/gTfTakIAIHYCebdjv3KdWndi/4A0ev/
1a2ZskO9hv4yDUz4ezPdk8+3NzQFCT5YQnCL6rL3BC2B8skKW0wy76/3lwsFwMJB
bIWuvBtqB5PavDcY7ZS9BQkGLQpxCho7zXRo7TH9rq/8bMrVUrgTPF/x18S6cW7q
uXuAdNqzhOruNQHchGKQZ2iKYcltdt4LEbhGPI02lEgFKgTSFG2B3f9/x/EBSG0u
guVv9Nz5qmdkEyZeQInHuGydLgcYF0L/VPAVPIvzScXZKmrKDFZQQMl97IQZ1QYq
DENVQYrlmB3cBSh2+nG706D5kFDhszxYUqU93Rc1NRsRyL9dU0EG/mh7UOOsqcU=
=dAZi
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file                  contents                                                        
            ./                                                                                    
538           .gitignore          6f6b25892efbd684badcacf837371d984a590fb3314d031030d7a08e4dd87c69
39            CHANGELOG.md        5dfc1d8eb979830d93e5950ac5dba9f706be57d2fdc4e443a171c711547badd4
1477          LICENSE             857f84fa908e1423ee6fe624c859fae1a60568c6e1018de34552497e555d244a
891           Makefile            a74a59acea1398ecb9a327fd74acb8727ea66fc16954b91efb0043529f2aed73
50            README.md           606e12b9f654de25bd4991de3c9934a4ae7566d733a28d9faa34dd98b98ded2c
              lib/                                                                                
376             alloc.js          978e6a41f1c1bc7ee83a41a037c41e6cd3244df081f4e1ad639fcefad07f4112
470             constants.js      d639bf566bb14849e1d757fa204f3969fe42d708e2e630ec98b0ea82c97a97f6
354             main.js           c6de8782aae3c2c3e2f2e1435c409d33802cd32ceb2786d31186fec03291adac
                scrapers/                                                                         
6342              rooter.js       55c2bb94d8a2c5bb2a8c11b867320cb1017b2ab589753a9e410cbea001e3ecf6
1589            web_service.js    d9cf28e20c3ae6f95c2ded72120dec881773001aead2a31d53982fea1e36d69e
696           package.json        8a9ba007a0bee818617a9ab9961168e58a3fd1f86894d4e272a87df94a35fc64
              src/                                                                                
400             alloc.iced        42afc21e0ac5aa418954ee2669a65f07ef7161bdf62e92b172c32dd4e9eee7ac
234             constants.iced    2e34f7209e9c5b5d71a8cdae96a1a314ecf1710952cadf95872bdc2e621d7334
165             main.iced         bb6e6886dc12455439e2c8e5030109b6886040778c5fe11d5195712e8d507b44
                scrapers/                                                                         
2605              rooter.iced     7404aba3e155f9dc702280d0972848f4809205f1a51b5423269a8de5ac9b9205
821             web_service.iced  8fb89cc02775570dd3c65cd4ea36638c4e4f3ffdb80087402f74a0184e959cac
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.9 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing