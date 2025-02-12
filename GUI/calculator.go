package main

import (
	"fmt"
	"fyne.io/fyne/v2/app"
	"fyne.io/fyne/v2/container"
	"fyne.io/fyne/v2/widget"
	"strconv"
)

func main() {
	// Create a new app
	myApp := app.New()

	// Create the main window
	myWindow := myApp.NewWindow("Calculator")

	// Declare variable for calculation result
	var currentInput string

	// Function to handle button presses
	buttonPressed := func(val string) {
		currentInput += val
		display.SetText(currentInput)
	}

	// Function to calculate result
	calculate := func() {
		// Try to evaluate the expression
		result, err := evaluate(currentInput)
		if err != nil {
			display.SetText("Error")
		} else {
			display.SetText(fmt.Sprintf("%f", result))
		}
		currentInput = ""
	}

	// Function to clear the input
	clear := func() {
		currentInput = ""
		display.SetText(currentInput)
	}

	// Create a text widget to display the current input
	display := widget.NewLabel("0")

	// Define the calculator buttons
	buttons := []string{
		"7", "8", "9", "/",
		"4", "5", "6", "*",
		"1", "2", "3", "-",
