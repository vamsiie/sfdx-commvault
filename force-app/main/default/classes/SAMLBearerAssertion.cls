// Code provided by Chuck Mortimore, Salesforce.com.
public class SAMLBearerAssertion {
    public  String subject;
    public  String issuer = '3MVG9d8..z.hDcPL3wBZPPGQlcWgaQMiIi.3qQKw2abKqgchvIqwUr_dwOga1QGYWjSpIWljLNCzuwHyv7gkE';
    public  String audience = 'https://login.salesforce.com';
    public  String action = 'https://login.salesforce.com/services/oauth2/token'; 
    
    public  string notBefore;
    public  String notOnOrAfter;

    public  String assertionId; 
    public  string digest1;
    public  string signature1;
    
    public  String encodedKey = 'MIIEpQIBAAKCAQEAxoVGlcKwwtazTje7h7WMjZV6Jq+eEIxUNVObmqFx4RlLFs292nNpb2OW3oPi+SKpHRwpf6wFwY6Y1R7KiVPzuTaXI1SOFs5LlzS15DP5sV8DUQ3iByV/J0sGSYWuQAkmpY/TK1rAjv5tX8PqFSRwYwJr4eiyjJi7VgqgDeNcl2hwSJJXsabIvqgSn5GnogZaB8pa1V1xI10/ankvmfAatzTppUohr2ufBNqweapoibCEpPhVsHsHkNqG6KBw+Onl2bW3TJjx2EfjpCESaOecBfpFUZYSpwC0BV/kFJLz4loOMJeJ7WKCFFrgtVfRVD94WyIsz8dTOdzVZCUnZ1MqwwIDAQABAoIBAQCR4uUhLya4uBCifWBpdWgpr9xJS6tr28QSQDPMabIHSpAc3OsU+tVTjysSsHb+wJLomoaAlUjRmdoEXBFY5AHqbQyaYQveBJIWNx0n624mA32rdflRaSPNG1wucXfBBTiKWGxFovZ43s4/nviJuvKAQApJxLhZi++3Zi2Cpz+m30Shku3EBeqJiODW//m6ne1K+Wq/9Iv8zbwzMhvNHYcQnI+lYVzTmLkYs1Zm8Al3b/bDEwVwKrovjF07r1Da1EBRCS3sKeWdJPUGTlD2m7Psm6jJXQuoBcObirJ/wyBHB+l5OZLgQZ05zLbB+3LCL/evVHumMV2EB4PYn2pQlQt5AoGBAOaBDvGq0oUCE2OK8nwdHuTmX5EXouxJuQRqJ6nUGYcqP1HqOgabTa5A0KX0HoTuPj7KvT9mxX72y8qZU1D0X1mPy4xoMyURFXutzeYff9EdbQKA23903qVGi96eweBqmcSwKCoYP8T1Kx1yDRyUx+YyrmrfMUfoJE37aVofLEA1AoGBANx6kt1nC/qOQmBsIGbn+JRKYUT6p0Aj3QbQYa/gL3YWBuSu/yXxlaL7VCuq7ZSh2sZNKe5jhTQCZz7F83cw9P190sN7h26quVmTuc2mYBkmplUGsVTKnIHs6tXTVvUa0xBplrl4BB5vlXoufbx74cPG06Ths979uvmIQirjTI4XAoGBAJusS9BxIs6LkVaoD449CJFk+OP/x5u3Sootu23Z/geoQ61p+BhgKL1nrsJ1tWrnkAhOWjOIkBdoTEge9wL0l7TgBYNlGC2PdSfbQPSLD4LGUcngBt30qy2KEIqgQ6XxuLn6kpWjXOYDAkRXs307CipwzhUFeb3rjSFRi1w/M16FAoGAGL5c2yIkcwMiKeYYoNPpzuKmFfK3cHhV5tzeCbn0OaFxNpr5IY4CSB9Cq//r1+FuRxED4rAik9qtMZtPnpHM/OHxFGU5ps7cLFRq5syEPm5a/nHY1vZCKEapeEPWn31aMJ5Y/wmcFLpbITI0hEG27ZzTxc5avGznXffPzTZjMhMCgYEAkC3iYrbCa6VZC+ayI2leRJoJ6juvX9e62PNIKZDDG+uxt518ASIxDOAN5oBbs315GNebhtkFdgztRybQZayDXOo/a4qxjLYQUxsCTkzHbDGlRDtzFpMBL3ZxXDegvmjv5q4Z9IyznRmXe6z8m6PtT+GNPE3ACQpXlKXqovt5KVs=';
    public  String preCannonicalizedResponse = '<saml:Assertion xmlns:saml="urn:oasis:names:tc:SAML:2.0:assertion" ID="ASSERTION_ID" IssueInstant="NOT_BEFORE" Version="2.0"><saml:Issuer Format="urn:oasis:names:tc:SAML:2.0:nameid-format:entity">ISSUER</saml:Issuer><saml:Subject><saml:NameID Format="urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified">SUBJECT</saml:NameID><saml:SubjectConfirmation Method="urn:oasis:names:tc:SAML:2.0:cm:bearer"><saml:SubjectConfirmationData NotOnOrAfter="NOT_ON_OR_AFTER" Recipient="RECIPIENT"></saml:SubjectConfirmationData></saml:SubjectConfirmation></saml:Subject><saml:Conditions NotBefore="NOT_BEFORE" NotOnOrAfter="NOT_ON_OR_AFTER"><saml:AudienceRestriction><saml:Audience>AUDIENCE</saml:Audience></saml:AudienceRestriction></saml:Conditions><saml:AuthnStatement AuthnInstant="NOT_BEFORE"><saml:AuthnContext><saml:AuthnContextClassRef>urn:oasis:names:tc:SAML:2.0:ac:classes:unspecified</saml:AuthnContextClassRef></saml:AuthnContext></saml:AuthnStatement></saml:Assertion>';
    public  String preCannonicalizedSignedInfo = '<ds:SignedInfo xmlns:ds="http://www.w3.org/2000/09/xmldsig#"><ds:CanonicalizationMethod Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#"></ds:CanonicalizationMethod><ds:SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1"></ds:SignatureMethod><ds:Reference URI="#ASSERTION_ID"><ds:Transforms><ds:Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"></ds:Transform><ds:Transform Algorithm="http://www.w3.org/2001/10/xml-exc-c14n#"></ds:Transform></ds:Transforms><ds:DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1"></ds:DigestMethod><ds:DigestValue>DIGEST</ds:DigestValue></ds:Reference></ds:SignedInfo>';
    public  String signatureBlock = '<ds:Signature xmlns:ds="http://www.w3.org/2000/09/xmldsig#">SIGNED_INFO<ds:SignatureValue>SIGNATURE_VALUE</ds:SignatureValue></ds:Signature><saml:Subject>';
    
    
    public SAMLBearerAssertion(String subject) {
        //this.subject = 'chatty.00d7f000004cke7uae.jjgf9xhcisx3@chatter.salesforce.com';
        this.subject = subject;
        datetime nowDt = datetime.now();
        Long nowLong = nowDt.getTime();
        datetime notBeforeDt = datetime.newInstance(nowLong - 120000);
        
        notBefore = notBeforeDt.formatGmt('yyyy-MM-dd\'T\'HH:mm:ss') + 'Z';
        datetime notOnOrAfterDt = nowDt.addMinutes(5);
        notOnOrAfter = notOnOrAfterDt.formatGmt('yyyy-MM-dd\'T\'HH:mm:ss') + 'Z';
        
        Double random = Math.random();
        assertionId = EncodingUtil.convertToHex(Crypto.generateDigest('SHA256',  Blob.valueOf('assertion' + random)));
        system.debug('assertionId'+assertionId);
        
    }

    public   String getResult(){
              
        preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('ASSERTION_ID',assertionId);
        preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('ISSUER',issuer);
        preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('AUDIENCE',audience);
        preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('RECIPIENT',action);
        preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('SUBJECT',subject);
        preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('NOT_BEFORE',notBefore);
        preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('NOT_ON_OR_AFTER',notOnOrAfter);
        
        //Prepare the Digest
        Blob digest = Crypto.generateDigest('SHA1',  Blob.valueOf(preCannonicalizedResponse));
        String digestString = EncodingUtil.base64Encode(digest);

        //Prepare the SignedInfo
        preCannonicalizedSignedInfo = preCannonicalizedSignedInfo.replaceAll('ASSERTION_ID',assertionId);
        preCannonicalizedSignedInfo = preCannonicalizedSignedInfo.replaceAll('DIGEST',digestString);
                
        //Sign the SignedInfo
        Blob privateKey = EncodingUtil.base64Decode(encodedKey);
        Blob input = Blob.valueOf(preCannonicalizedSignedInfo);
                
        Blob signature = Crypto.sign('RSA', input, privateKey);
        //Blob signature = Blob.valueOf('foo');
        String signatureString = EncodingUtil.base64Encode(signature);
        
        //Prepare the signature block
        signatureBlock = signatureBlock.replaceAll('SIGNED_INFO',preCannonicalizedSignedInfo);
        signatureBlock = signatureBlock.replaceAll('SIGNATURE_VALUE',signatureString);
        
        //cheap trick for enveloping the signature by swapping out last element with sig + last elements of whole message
        preCannonicalizedResponse = preCannonicalizedResponse.replaceAll('<saml:Subject>', signatureBlock );
        
        //return the prefix + our prepped message
        System.debug('ASSERTION:' + preCannonicalizedResponse);
        return preCannonicalizedResponse;
  
    }
    
     public  String base64URLencode(Blob input){ 
        String output = encodingUtil.base64Encode(input);
        output = output.replace('+', '-');
        output = output.replace('/', '_');
        while ( output.endsWith('=')){
            output = output.subString(0,output.length()-1);
        }
        return output;
   }
    public  httpResponse getpostSAML()
   {
        String saml = getResult();
        System.debug('\n===============SAML==============\n: ' + saml);
        http h = new http();
        httpRequest req = new httpRequest();
        req.setHeader('Content-Type','application/x-www-form-urlencoded');
        req.setMethod('POST');
        String param = 'grant_type=' + encodingUtil.urlEncode('urn:ietf:params:oauth:grant-type:saml2-bearer','UTF-8')+'&assertion=' + base64URLencode(blob.valueOf(saml)); 
        req.setBody(param);
        
        req.setEndpoint(action);
        httpResponse res = h.send(req);
        System.debug('\n\nRESPONSE: ' + res.getBody());
        System.debug('\n\nRESPONSE: ' + res.getStatusCode() + '  ' + res.getStatus()); 
        return res;
   }
   
}