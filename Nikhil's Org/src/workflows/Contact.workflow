<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Birthday_Email</fullName>
        <description>Birthday_Email</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Birthday_Template</template>
    </alerts>
    <alerts>
        <fullName>Experience_Email</fullName>
        <description>Experience_Email</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Experience_Template</template>
    </alerts>
    <rules>
        <fullName>Birthday_Workflow</fullName>
        <actions>
            <name>Birthday_Email</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>Birthdate -2 = DATE(YEAR(Birthdate), MONTH(TODAY()), DAY(TODAY()))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Experience_Workflow</fullName>
        <actions>
            <name>Experience_Email</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Field_Experience__c</field>
            <operation>greaterOrEqual</operation>
            <value>5</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.FirstName</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
