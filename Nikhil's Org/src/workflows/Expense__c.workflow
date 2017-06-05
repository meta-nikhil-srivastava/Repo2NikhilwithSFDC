<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Approval_Email</fullName>
        <description>Approval Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>ajinku@metacube.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>nikhil@metacube.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>HTML_Emails_With_Letterhead/Approved_Template</template>
    </alerts>
    <alerts>
        <fullName>Rejection_Email</fullName>
        <description>Rejection Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>ajinku@metacube.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>nikhil@metacube.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>HTML_Emails_With_Letterhead/Rejected_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>Approved_Action</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Approved Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Intial_Submission</fullName>
        <description>Intial Submission</description>
        <field>Status__c</field>
        <literalValue>Submitted</literalValue>
        <name>Intial Submission</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Recall_Action</fullName>
        <field>Status__c</field>
        <literalValue>Draft</literalValue>
        <name>Recall Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Rejected_Action</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Rejected Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
