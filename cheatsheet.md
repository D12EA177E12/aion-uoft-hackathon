# Aion UofT Hackathon

![Aion and UofT Logos](aion-uoft.png)

Here's a bunch of stuff that will probably be useful for this hackathon. Any questions, just find one of the nerds in an Aion t-shirt.

1. [Hello World Example](#hello-world-example)
2. [Aion Overview](#aion-overview)
3. [Useful Links](#useful-links)
4. [Contact Info](#contact-info)

## Hello World Example

Follow these steps to spin up a local Aion Blockchain and deploy a simple _Hello World_ contract.

1. [Install Maven](https://docs.aion.network/docs/maven-and-aion4j-installation).
2. Create an Aion project:

    ```bash
    mvn archetype:generate -DarchetypeGroupId=org.aion4j -DarchetypeArtifactId=avm-archetype -DarchetypeVersion=0.6
    ```

    This command creates a sample _Hello World_ project. You can find the contract at `src/main/java/foobar/HelloAvm.java`.

3. Edit the `pom.xml` file to use version the latest version `0.4.8` of the Aion4j plugin:

    ```xml
    <properties>
        ...
        <aion4j.plugin.version>0.4.8</aion4j.plugin.version>
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

## Aion Overview

- Who / what Aion is.
- Why we chose Java.
- Open grants available.

## Useful Links

1. [Aion Documentation](https://docs.aion.network)
2. [Aion University](https://learn.aion.network)
3. [Free Node Hosting](https://nodesmith.io/)
4. [Testing and Debugging with Java Smart Contracts](https://blog.aion.network/debugging-avm-contracts-4a3256e86221)
5. [Example Application using React](https://github.com/aion-jiaying/HelloAVM)
6. [Using the AIWA Browser Wallet (Metamask)](https://learn.aion.network/docs/aiwa)

## Contact Info

If you've got any questions just find one of the nerds in an Aion shirt, or message us on the `#aion-challenge` Slack channel.

### Footer

This page is available in [fancy HTML](https://aionuoft.ca/index.html), [markdown](https://aionuoft.ca/cheatsheet.md) or a [basic af html](https://aionuoft.ca/cheatsheet.html). We're using [Mblode's Marx Classless CSS](https://github.com/mblode/marx).

![Aion and UofT Logos](aion-uoft.png)