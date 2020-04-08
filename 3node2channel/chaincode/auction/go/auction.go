package main

import (
	// "bytes"
	// "encoding/json"
	"fmt"
	// "strconv"
	// "strings"
	// "time"

	// "github.com/hyperledger/fabric/core/chaincode/shim"
	// pb "github.com/hyperledger/fabric/protos/peer"
)

type SimpleChaincode struct {
}

type Order struct {
	Tid		string 
	Otype	string
	Price	int
	Qty		string
	Time	float64
	Qid 	int
}

func (o Order) Output() {
	fmt.Printf("[%s %s P=%d Q=%s T=%f QID:%d]", o.Tid, o.Otype, o.Price, o.Qty, o.Time, o.Qid)
}

func main() {
	simpleOrder := Order {
		Tid: "123",
		Otype: "321",
		Price: 24,
		Qty: "12",
		Time: 2.4,
		Qid: 12,
	}
	simpleOrder.Output()
}