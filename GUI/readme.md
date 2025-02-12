# Simple Calculator in Go

This is a simple GUI-based calculator built using the Go programming language and the Fyne library. It allows users to perform basic arithmetic operations like addition, subtraction, multiplication, and division.

## Features
- Simple and intuitive GUI.
- Supports basic arithmetic operations (`+`, `-`, `*`, `/`).
- Shows the result after clicking the "=" button.
- Supports clearing input using the "C" button.

## Prerequisites

Before you can build and run this program, ensure you have the following:

- Go installed on your machine. You can download and install Go from [here](https://golang.org/dl/).
- Fyne library (used for GUI) installed.

To install Go, follow the instructions provided on the Go website based on your operating system.

### Install Fyne

You can install the Fyne library using the following command:

```bash
go get fyne.io/fyne/v2
```

Run:
```sh
GOOS=windows GOARCH=amd64 go build -o calculator.exe
```
and
```pwsh
$env:GOOS="windows"
$env:GOARCH="amd64"
go build -o calculator.exe
```
