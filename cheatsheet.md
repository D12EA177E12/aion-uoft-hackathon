# Aion UofT Hackathon

![Aion and UofT Logos](aion-uoft.png)

Here's a bunch of stuff that will probably be useful for this hackathon. Any questions, just find one of the nerds in an Aion t-shirt.

1. [Hello World Example](#hello-world-example)
2. [About Aion](#about-aion)
3. [Our Core Strategy](#our-core-strategy)
4. [Useful Links](#useful-links)
5. [Contact Info](#contact-info)

## Hello World Example

Follow these steps to spin up a local Aion Blockchain and deploy a simple _Hello World_ contract.

1. [Install Maven](https://docs.aion.network/docs/maven-and-aion4j-installation).
2. Create an Aion project:

    ```bash
    mvn archetype:generate -DarchetypeGroupId=org.aion4j -DarchetypeArtifactId=avm-archetype -DarchetypeVersion=0.6
    ```

    This command creates a sample _Hello World_ project. You can find the contract at `src/main/java/foobar/HelloAvm.java`.

3. Edit the `pom.xml` file to use version the latest version `0.4.9` of the Aion4j plugin:

    ```xml
    <properties>
        ...
        <aion4j.plugin.version>0.4.9</aion4j.plugin.version>
        ...
    </properties>
    ```

4. Initialize the project:

    ```bash
    mvn initialize
    ```

5. Compile the contract:

    ```bash
    mvn clean install
    ```

6. Deploy your contract:

    ```bash
    mvn aion4j:deploy
    ```

This _deploys_ the contract to a local AVM, also called the [Embedded AVM](https://docs.aion.network/docs/maven-and-aion4j-embedded-avm).

5. Call the `greet` class within the `HelloWorld.java` contract:

    ```bash
    mvn aion4j:call -Dmethod=greet -Dargs="-T Bob"

    > ...
    >
    > [INFO] ****************  Method call result  ****************
    > [INFO] Data       : Hello Bob
    > [INFO] Energy used: 68514
    > [INFO] *********************************************************
    >
    > ...

    ```

6. Edit the contract and change the `greet` function so that the contract returns "Good Morning":

    ```java
    public static String greet(String name) {
        return "Good morning " + name;
    }
    ```

7. Recompile the contract:

    ```bash
    mvn clean install
    ```

8. Redeploy the contract:

    ```bash
    mvn aion4j:deploy
    ```

9. Call the `greet` method again:

    ```bash
    mvn aion4j:call -Dmethod=greet -Dargs="-T Alice"

    > ...
    >
    > [INFO] ****************  Method call result  ****************
    > [INFO] Data       : Good morning Alice
    > [INFO] Energy used: 68514
    > [INFO] *********************************************************
    >
    > ...

    ```

10. And you're done! When you're ready to deploy to the testnet, check out the [Remote AVM documentation](https://docs.aion.network/docs/maven-and-aion4j-remote-avm).

### Next Steps

Checkout these tutorials if you want to delve in a bit deeper.

- [AVM Hackathon Web3 Guide](https://learn.aion.network/docs/avm-hackathon-web3-guide)
- [Deploy your first Java Smart Contract!](https://learn.aion.network/docs/aion-deploy-java-smart-contract-maven)
- [Debug your Java Smart Contract](https://learn.aion.network/docs/debug-your-java-smart-contract)
- [Migrate to Java Smart Contracts from Solidity](https://learn.aion.network/docs/migrate-solidity-to-java-smart-contract)
- [Java vs Solidity Function Comparisons](https://learn.aion.network/docs/java-vs-solidity-function-comparisons)

## About Aion

### What we Are

Aion is a scalable, approachable, and reliable smart contract platform for decentralized applications. That's a lot of waffle, so here's our definitions of those points:

- Scalable: Solving blockchain scalability
- Approachable: The most developer-friendly platform
- Reliable: Providing confidence in a new world

## Our Core Strategy

One of the first things we found useful once we started building test dApps for AVM was how easy it is to write correct code in Java. This is mainly due to the ability to use complex, user-defined, types native to Java. It also helps that we didn't have to change our IDEs or workflow. Java just works.

This doesn’t even begin to tap into the treasure trove of open source tools which have grown around the Java ecosystem, many of which can be applied to this environment to improve quality and velocity.

### Features

Here's a few features of the JVM (and consequentially the AVM) that are beneficial to the Aion ecosystem. 

#### Performance

The AVM uses the JIT compiler which optimizes the blockchain application code. It also features multi-threading, allowing increased throughput via concurrent transaction execution as opposed to most blockchain VMs.

#### Reliability & Maturity

The core of the JVM is a very mature piece of software, changing little between releases and being used for a myriad of purposes, across countless environments, for over 2 decades. Anything we can do to leverage that history avoids potential pit-falls.

#### Developer-friendly

The Java-based AVM leverages the entire Java tooling ecosystem, making developer onboarding and experience extremely streamlined. You get the full developer package including the compiler and IDE straight out of the box! That said, the AVM taps into a well-established community that has claimed the top spot for the #1 language (Java) in the past few years.

### How you can get involved

There's a bunch of ways you can get involved with the project, even after this hackathon is over:

- [Contribute to the codebase (we're open-source, obviously)](https://github.com/aionnetwork)
- [Claim bounties and grants](https://aion.network/bounty)
- [Improve the network by proposing an AIP](https://github.com/aionnetwork/AIP)
- [Join our team! We are hiring!](https://aion.network/careers/)

## Useful Links

1. [Aion Documentation](https://docs.aion.network)
2. [Aion University](https://learn.aion.network)
3. [Free Node Hosting](https://nodesmith.io/)
4. [Testing and Debugging with Java Smart Contracts](https://blog.aion.network/debugging-avm-contracts-4a3256e86221)
5. [Example Application using React](https://github.com/aion-jiaying/HelloAVM)
6. [Using the AIWA Browser Wallet (Metamask)](https://learn.aion.network/docs/aiwa)

## Contact Info

If you've got any questions just find one of the nerds in an Aion shirt, or message us on the `#aion-challenge` Slack channel. The following nerds will be around for the weekend:

| Name | Picture |

### Footer

This page is available in [fancy HTML](https://aionuoft.ca/index.html), [markdown](https://aionuoft.ca/cheatsheet.md) or a [basic af html](https://aionuoft.ca/cheatsheet.html). We're using [Mblode's Marx Classless CSS](https://github.com/mblode/marx).

![Aion and UofT Logos](aion-uoft.png)