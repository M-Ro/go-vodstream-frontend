package pages

import (
	"github.com/maxence-charriere/go-app/v9/pkg/app"
)

// LandingPage is a page component for rendering the default page content
type LandingPage struct {
	app.Compo
}

// The Render method is where the component appearance is defined. Here, a
// "Hello World!" is displayed as a heading.
func (p *LandingPage) Render() app.UI {
	return app.H1().Text("Landing Page!")
}
