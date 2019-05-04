package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"

	tf "github.com/tensorflow/tensorflow/tensorflow/go"
)

func main() {
	f, e := os.Open("./export_model/saved_model.pb")
	if e != nil {
		log.Fatal(e)
	}
	defer f.Close()

	bs, e := ioutil.ReadAll(f)
	if e != nil {
		log.Fatal(e)
	}

	g := tf.NewGraph()
	if e := g.Import(bs, ""); e != nil {
		log.Fatal(e)
	}

	fmt.Println("Number of operations:", g.Operations())
}
