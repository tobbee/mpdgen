package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
)

// Replace the following with 8 bytes "string  "
var xlinkTypes = []string{"*Href   ", "*Actuate", "*Type   ", "*Show   "}

func main() {
	if len(os.Args) < 3 {
		fmt.Println("Usage fixmpd infile.go outfile.go")
		os.Exit(1)
	}
	inFile := os.Args[1]
	outFile := os.Args[2]

	ifh, err := os.Open(inFile)
	if err != nil {
		log.Fatal(err)
	}
	defer ifh.Close()

	ofh, err := os.Create(outFile)
	if err != nil {
		log.Fatal(err)
	}
	defer ofh.Close()

	fileScanner := bufio.NewScanner(ifh)

	fileScanner.Split(bufio.ScanLines)

	for fileScanner.Scan() {
		line := fileScanner.Text()
		for _, xt := range xlinkTypes {
			line = strings.Replace(line, xt, "string  ", 1)
		}
		//line = strings.Replace(line, "Attr ", " ", 1)  // Now done in xgen tool
		fmt.Fprintf(ofh, "%s\n", line)
	}
}
