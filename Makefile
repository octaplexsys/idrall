git-submodule-update:
	git submodule update --remote

repl-test:
	echo 3 > /tmp/bar.dhall
	echo './bar.dhall' > /tmp/foo.dhall
	echo './importFailA.dhall' > /tmp/importFailB.dhall
	echo './importFailB.dhall' > /tmp/importFailA.dhall
	idris -p lightyear tests/Test.idr

clean:
	rm -f tests/*.idr~
	rm -f tests/*.ibc
	rm -f Idrall/*.idr~
	rm -f Idrall/*.ibc
