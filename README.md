<div align="center">
  <br>
  <img alt="DEV" src="https://thepracticaldev.s3.amazonaws.com/i/ro3538by3b2fupbs63sr.png" width="500px">
  <h1>DEV Community 👩‍💻👨‍💻</h1>
  <strong>The Human Layer of the Stack</strong>
</div>
<br>
<p align="center">
  <a href="https://www.ruby-lang.org/en/">
    <img src="https://img.shields.io/badge/Ruby-v2.6.5-green.svg" alt="ruby version">
  </a>
  <a href="http://rubyonrails.org/">
    <img src="https://img.shields.io/badge/Rails-v5.2.3-brightgreen.svg" alt="rails version">
  </a>
  <a href="https://travis-ci.com/thepracticaldev/dev.to">
    <img src="https://travis-ci.com/thepracticaldev/dev.to.svg?branch=master" alt="Travis Status for thepracticaldev/dev.to">
  </a>
  <a href="https://codeclimate.com/github/thepracticaldev/dev.to/maintainability">
    <img src="https://api.codeclimate.com/v1/badges/ce45bf63293073364bcb/maintainability" alt="Code Climate maintainability">
  </a>
  <a href="https://codeclimate.com/github/thepracticaldev/dev.to/test_coverage">
    <img src="https://api.codeclimate.com/v1/badges/ce45bf63293073364bcb/test_coverage" alt="Code Climate test coverage">
  </a>
  <a href="https://codeclimate.com/github/thepracticaldev/dev.to/trends/technical_debt">
    <img src="https://img.shields.io/codeclimate/tech-debt/thepracticaldev/dev.to" alt="Code Climate technical debt">
  </a>
  <a href="https://www.codetriage.com/thepracticaldev/dev.to">
    <img src="https://www.codetriage.com/thepracticaldev/dev.to/badges/users.svg" alt="CodeTriage badge">
  </a>
  <img src="https://badgen.net/dependabot/thepracticaldev/dev.to?icon=dependabot" alt="Dependabot Badge">
  <a href="https://gitpod.io/from-referrer/">
    <img src="https://img.shields.io/badge/setup-automated-blue?logo=gitpod" alt="GitPod badge">
  </a>
  <a href="https://app.netlify.com/sites/devto/deploys">
    <img src="https://api.netlify.com/api/v1/badges/e5dbe779-7bca-4390-80b9-6e678b4806a3/deploy-status" alt="Netlify badge">
  </a>
  <img src="https://img.shields.io/github/languages/code-size/thepracticaldev/dev.to" alt="GitHub code size in bytes">
  <img src="https://img.shields.io/github/commit-activity/w/thepracticaldev/dev.to" alt="GitHub commit activity">
  <a href="https://github.com/thepracticaldev/dev.to/issues?q=is%3Aissue+is%3Aopen+label%3A%22ready+for+dev%22">
    <img src="https://img.shields.io/github/issues/thepracticaldev/dev.to/ready for dev" alt="GitHub issues ready for dev">
  </a>
  <a href="https://app.honeybadger.io/project/Pl5JzZB5ax">
    <img src="https://img.shields.io/badge/honeybadger-active-informational" alt="Honeybadger badge">
  </a>
</p>

## What is dev.to?

[dev.to](https://dev.to) (or just DEV) is a platform where software developers
write articles, take part in discussions, and build their professional profiles.
We value supportive and constructive dialogue in the pursuit of great code and
career growth for all members. The ecosystem spans from beginner to advanced
developers, and all are welcome to find their place within our community. ❤️

Link to the [dev.to](https://dev.to) codebase [README](https://github.com/thepracticaldev/dev.to/blob/master/README.md). 

## Table of Contents

- [What is dev.to?](#what-is-devto)
- [Table of Contents](#table-of-contents)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation Documentation](#installation-documentation)
- [Developer Documentation](#developer-documentation)
- [Extended Functionality](#extended-functionality)
- [Images](#images)
  - [Wireframes](#wireframes)
  - [Screenshots](#screenshots)
  - [Flowcharts](#flowcharts)
  - [Entity Relationship Diagram](#entity-relationship-diagram)
- [Presentation](#presentation)
- [Contributors](#contributors)
- [Vulnerability disclosure](#vulnerability-disclosure)
- [License](#license)

## Getting Started

This section provides a high-level quick start guide. If you're looking for the
[installation guide](https://docs.dev.to/installation/), you'll want to refer to
the complete [Developer Documentation](https://docs.dev.to).

The platform runs on a [Rails](https://rubyonrails.org/) backend, and is currently
transitioning to a [Preact](https://preactjs.com/)-first frontend.

A more complete overview of the stack is available in the
[dev.to docs](https://docs.dev.to/technical-overview/).

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/): we recommend using
  [rbenv](https://github.com/rbenv/rbenv) to install the Ruby version listed on
  the badge.
- [Yarn](https://yarnpkg.com/) 1.x: please refer to their
  [installation guide](https://classic.yarnpkg.com/en/docs/install).
- [PostgreSQL](https://www.postgresql.org/) 9.4 or higher.
- [ImageMagick](https://imagemagick.org/): please refer to ImageMagick's
  [installation instructions](https://imagemagick.org/script/download.php).
- [Redis](https://redis.io/) 4 or higher.
- [Elasticsearch](https://www.elastic.co) 7 or higher.

### Installation Documentation

[View Full Installation Documentation](https://docs.dev.to/installation/).

## Developer Documentation

[Check out the dedicated docs page for more technical documentation](https://docs.dev.to).

## Extended Functionality

### Daily Dev Email Feature Overview

For this feature project, we help readers build a daily habit of reading a single article. When a registered user goes to their Settings page and clicks on the Notifications submenu, we've added a checkbox for that user to subscribe to receive a daily emailed article relevant to their tags. 

When that option is checked, each day the user will receive an email from the app. We built out functionality to select a highly-read article (based on number of page views) matching a tag that the user follows that was posted in the last 14 days. Users subscribed to receive an email who are not following any tags are sent an article that matches all other article criteria.

### Wireframes



### Screenshots

#### Sample Email
<p align="center">
  <img width="351" alt="Screen Shot 2020-03-27 at 8 54 22 PM" 
src="https://user-images.githubusercontent.com/50811220/77950781-8fc7b400-72b8-11ea-8a40-6b44c7cc0bec.png">
</p>

### Flowcharts

#### Feature Flow 
<p align="center">
  <img width="459" alt="feature flow" 
src="https://user-images.githubusercontent.com/50811220/77949141-fe574280-72b5-11ea-8b2f-efe4ce508f89.png">
</p>

#### Data Flow 
<p align="center">
  <img width="459" alt="data flow" 
src="https://user-images.githubusercontent.com/50811220/77951780-1d57d380-72ba-11ea-8a26-94a53c0bb689.png">
</p>

### Entity Relationship Diagram
<p align="center">
  <img width="1072" alt="ERD" 
src="https://user-images.githubusercontent.com/50811220/77949317-44140b00-72b6-11ea-93b4-56ed45c69299.png">
</p>

## Presentation

[Link to presentation](https://www.canva.com/design/DAD32ug--10/YvH7uiRfI9tM0kiQ1jkOyg/view?utm_content=DAD32ug--10&utm_campaign=designshare&utm_medium=link&utm_source=sharebutton), including a video demo of the added feature and additional context related to the project itself.

## Contributors

**Backend**  
- [@freeheeling](https://github.com/freeheeling)  
**Frontend**  
- [@pJanks](https://github.com/pJanks)
- [@VeeAndrade](https://github.com/VeeAndrade)

## Vulnerability disclosure

We welcome security research on DEV under the terms of our
[vulnerability disclosure policy](https://dev.to/security).

## License

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version. Please see the [LICENSE](./LICENSE.md) file in our repository for
the full text.

Like many open source projects, we require that contributors provide us with a
Contributor License Agreement (CLA). By submitting code to the DEV project, you
are granting us a right to use that code under the terms of the CLA.

Our version of the CLA was adapted from the Microsoft Contributor License
Agreement, which they generously made available to the public domain under
Creative Commons CC0 1.0 Universal.

Any questions, please refer to our [license FAQ](https://docs.dev.to/licensing/)
doc or email yo@dev.to.

<br>

<p align="center">
  <img alt="Sloan, the sloth mascot" width="250px" src="https://thepracticaldev.s3.amazonaws.com/uploads/user/profile_image/31047/af153cd6-9994-4a68-83f4-8ddf3e13f0bf.jpg">
  <br>
  <strong>Happy Coding</strong> ❤️
</p>
