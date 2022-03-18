#language: nl
Functionaliteit: Geef aanvullende informatie use-case

  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "GEEF_AANVULLENDE_INFORMATIE"

    Voorbeelden:
    | rollen      | wel-niet |
    | systeem     | niet     |
    | wsk         | niet     |
    | kredietbank | wel      |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    En een aanvraag van "<kredietbank>"
    Wanneer use-case "geef aanvullende informatie" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | kredietbank   | rollen                     | wel-niet |
    | kredietbank_a |                            | niet     |
    | kredietbank_a | systeem                    | niet     |
    | kredietbank_a | wsk                        | niet     |
    | kredietbank_a | kredietbank                | niet     |
    | kredietbank_a | kredietbank_a              | niet     |
    | kredietbank_a | kredietbank, kredietbank_b | niet     |
    | kredietbank_a | kredietbank, kredietbank_a | wel      |