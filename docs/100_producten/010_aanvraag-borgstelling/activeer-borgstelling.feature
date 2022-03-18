#language: nl
Functionaliteit: Activeer borgstelling use-case
  
  Abstract Scenario: Use-case permissie is juist
    Gegeven een gebruiker met de rollen "<rollen>"
    Dan heeft de gebruiker "<wel-niet>" de permissie "ACTIVEER_BORGSTELLING"

    Voorbeelden:
    | rollen      | wel-niet |
    | kredietbank | niet     |
    | wsk         | niet     |
    | systeem     | wel      |

  Abstract Scenario: Use-case heeft de juiste autorisaties
    Gegeven een gebruiker met de rollen "<rollen>"
    Wanneer use-case "registreer aanvraag" wordt uitgevoerd
    Dan is de gebruiker "<wel-niet>" geautoriseerd

    Voorbeelden:
    | rollen      | wel-niet |
    | kredietbank | niet     |
    | wsk         | niet     |
    | systeem     | wel      |