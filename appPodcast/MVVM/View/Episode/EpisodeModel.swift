//
//  Episode.swift
//  appPodcast
//
//  Created by Bohdan Kompaniiets on 25.03.2025.
//

// swiftlint:disable line_length

import Foundation

struct Episode: Identifiable {
  var id = UUID()
  let title: String
  let description: String
  let imageURL: String
  let data: String
  let duration: String
}

extension Episode {
  static var samples: [Episode] = [

    .init(title: "The Sunday Read: ‘What I Found on the 365-Mile Trail of a Lost Folk Hero’",
          description: "Sometime in the 1850s or ’60s, at a terrible moment in U.S. history, a strange man seemed to sprout, out of nowhere, into the rocky landscape between New York City and Hartford, Conn. The word “strange” hardly captures his strangeness. He was rough and hairy, and he wandered around on back roads, sleeping in caves. Above all, he refused to explain himself. As one newspaper put it: “He is a mystery, and a very greasy and ill-odored one.” Other papers referred to him as “the animal” or (just throwing up their hands) “this uncouth and unkempt ‘What is it?’”",
          imageURL: "Podcast", data: "Today", duration: "51m 57s"),

    .init(title: "Were the Covid Lockdowns Worth It?",
          description: "Five years ago, at the urging of federal officials, much of the United States locked down to stop the spread of Covid. Over time, the action polarized the country and changed the relationship between many Americans and their government.",
          imageURL: "Podcast", data: "Monday", duration: "49m 7s"),

    .init(title: "Elbows Up: Canada’s Response to Trump’s Trade War",
          description: "A gloves-off trade war with the United States is uniting Canadians against their southern neighbor.Matina Stevis-Gridneff, the Canada bureau chief for The New York Times, explains how the dispute is shifting the country’s politics, culture and place on the global stage.Guest: Matina Stevis-Gridneff, the Canada bureau chief for The New York Times.Background reading: President Trump intensified statehood threats as he increased tariffs on Canada.For more information on today’s episode, visit nytimes.com/thedaily. Transcripts of each episode will be made available by the next workday. Photo: Amber Bracken/Reuters Unlock full access to New York Times podcasts and explore everything from politics to pop culture. Subscribe today at nytimes.com/podcasts or on Apple Podcasts and Spotify.",
          imageURL: "Podcast", data: "30 feb", duration: "26m 5s"),

    .init(title: "Trump’s Bid for Greenland",
          description: "In his recent address before Congress, President Trump talked once again about his big ambitions for Greenland.He told the icebound island’s “incredible people” that he supported their right to determine their future. But he ended his message with a threat, declaring, “One way or the other we are going to get it.”Jeffrey Gettleman, an international correspondent for The New York Times who recently traveled to the island, explains what Mr. Trump wants from Greenland, and whether he may actually get it.Guest: Jeffrey Gettleman, an international correspondent for The New York Times, based in London and covering global events.Background reading: Trump said the U.S. would “get” Greenland. Greenlanders were not impressed.Jeffrey Gettleman spent 12 days reporting around Greenland about its big moment.The harsh reality behind the glittering promise of Greenland’s minerals.For more information on today’s episode, visit nytimes.com/thedaily. Transcripts of each episode will be made available by the next workday. Photo: Ivor Prickett for The New York Times Unlock full access to New York Times podcasts and explore everything from politics to pop culture. Subscribe today at nytimes.com/podcasts or on Apple Podcasts and Spotify.",
          imageURL: "Podcast", data: "1 feb", duration: "26m 19s"),

    .init(title: "'The Interview': Lady Gaga's Latest Experiment? Happiness.",
          description: "The pop superstar reflects on her struggles with mental health, the pressures of the music industry and why she’s returned to the sound that made her famous.Unlock full access to New York Times podcasts and explore everything from politics to pop culture. Subscribe today at nytimes.com/podcasts or on Apple Podcasts and Spotify.",
          imageURL: "Podcast", data: "19 dec, 2024", duration: "48m 56s"),

    .init(title: "DOGE Has a Math Problem",
          description: "Since President Trump took office, Elon Musk and DOGE have wielded an unprecedented level of power to help the administration cut the U.S. government, and they claim to have stopped tens of billions of dollars in wasteful spending.David A. Fahrenthold, an investigative reporter for The Times, explains why those claims are not what they seem — and what that tells us about Mr. Musk’s project to shrink the federal bureaucracy.Guest: David A. Fahrenthold, an investigative reporter for The New York Times.Background reading: DOGE’s only public ledger has been riddled with mistakes.The group has now deleted hundreds of claimed savings, worth billions of dollars, from that ledger.For more information on today’s episode, visit nytimes.com/thedaily. Transcripts of each episode will be made available by the next workday. Photo: Andrew Harnik/Getty Images Unlock full access to New York Times podcasts and explore everything from politics to pop culture. Subscribe today at nytimes.com/podcasts or on Apple Podcasts and Spotify.",
          imageURL: "Podcast", data: "8 sep, 2024", duration: "25m 30s"),

    .init(title: "She Fell in Love With ChatGPT. Like, Actual Love. With Sex.",
          description: "Warning: This episode discusses sexual themes.Artificial intelligence has changed how millions of people write emails, conduct research and seek advice.Kashmir Hill, who covers technology and privacy, tells the story of a woman whose relationship with a chatbot when much further than that.Guest: Kashmir Hill, a features writer on the business desk at The New York Times, covering technology and privacy.Background reading: She is in love with ChatGPT.For more information on today’s episode, visit nytimes.com/thedaily. Transcripts of each episode will be made available by the next workday. Photo: Helen Orr for The New York Times Unlock full access to New York Times podcasts and explore everything from politics to pop culture. Subscribe today at nytimes.com/podcasts or on Apple Podcasts and Spotify.",
          imageURL: "Podcast", data: "12 apr, 2019", duration: "32m 28s")
  ]

  static var sample = samples[0]
}

// swiftlint:enable line_length
