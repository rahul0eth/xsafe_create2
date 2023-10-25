# xSafe Predictive Deployer

Deterministic Multi-Chain Deployment

FRONTEND:

WE ALSO HANDLE SIGNATURES CAREFULLY ON FRONTEND

-   MINIMIZE RISK OF SIGNATURES GETTING STOLEN
-   AFTER SIGNING, PROMPT TRANSACTION. IF SUBMITTED, CLEAR STATE. IF NOT, CLEAR STATE, PROMPT SIGN AGAIN.

CONTRACTS:

WE ONLY ACCEPT SIGNATURES RELEVANT TO OUR SPECIFIC CONTRACT FUNCTIONALITY

-   NO ACTIONS CAN TAKE PLACE THAT WERE NOT DIRECTLY AUTHORIZED
-   STOLEN SIGNATURES, FOR OTHER MEANS, DO NOT PROMPT DEPLOYMENTS ON OUR FACTORY CONTRACT

WE MANDATE THAT ONLY SIGNER AND XSAFE CAN SUBMIT SIGNATURES FOR DEPLOYMENT

-   THE POWER TO EXECUTE A DEPOYMENT IS LIMITED TO SALT PRIVATE KEY HOLDER AND XSAFE

DEPLOYMENT REQUIRES SIGNATURE, NOT ADDRESS DIRECTLY

-   SALT IS A FUNCTION OF ADDRESS - ANYONE CAN SUBMIT AN ADDRESS. ONLY PRIVATE KEYHOLDER CAN SUBMIT SIGNATURE
-   WITH SIGNATURE METHOD, THE ONLY WAY TO OBTAIN A SALT, TIED TO AN ADDRESS, IS TO OWN THAT ADDRESS' PRIVATE KEY
-   ONLY RIGHTFUL OWNERS CAN DEPLOY THEIR CONTRACTS AT THEIR DETERMINISTIC ADDRESSES

USER NONCE IS DEPENDENT ON THE BYTECODE OF THE FUNCTION
-   RATIONALE: USER DOES NOT NEED TO TRACK THE ORDER IN WHICH THEY DEPLOY CONTRACTS A, B, C... ON CHAIN 1 | B, A, C... ON CHAIN 2
-   IN AN EFFORT TO KEEP THE SIGNABLE TRANSACTION HASH UNIQUE FOR EACH TRANSACTION, BYTECODE IS INCLUDED IN THE HAS
-   WE CHOSE NOT TO INCLUDE BYTECODE IN THE SALT BECAUSE CREATE2 IS A HASH OF THE BYTECODE AND THE SALT. 
    -   EVEN IF THE SALT IS THE SAME FOR CONTRACT A AND B, THEY WILL HAVE DIFFERENT BYTECODES AND THUS DIFFERENT ADDRESSES.