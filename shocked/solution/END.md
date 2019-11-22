# Solution

1. Analyze the main network and detect the machine with a web service

2. Opening `/cgi-bin/howami` you should realize that the flag is in another machine, in another network different than yours.

3. Testing the path with a vulnerability scan tool could let you know what vulnerability explode, but if you have done a good recognition process, just Googling terms like:

- Shocked

- Apache

- cgi-bin

- Linux

Could be enough to know the vulnerability of the system: `Shellshock`

4. The exploitation is very easy. The most basic request you could do is this:

```
curl localhost:8080/cgi-bin/howami -H "user-agent: () { :; }; echo; /bin/cat /etc/passwd;"
```

5. After having accessed the machine, you can see the code which gets the users from the database, and injecting code using Apache headers or pivoting over the machine, you could send a query to the `db` for getting the flag.
