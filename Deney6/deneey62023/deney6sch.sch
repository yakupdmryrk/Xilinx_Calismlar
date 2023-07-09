<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Ain(2:0)" />
        <signal name="Bin(2:0)" />
        <signal name="XLXN_3(3:0)" />
        <signal name="S(7:0)" />
        <port polarity="Input" name="Ain(2:0)" />
        <port polarity="Input" name="Bin(2:0)" />
        <port polarity="Output" name="S(7:0)" />
        <blockdef name="threebitadder">
            <timestamp>2023-5-4T15:53:45</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="sevseg">
            <timestamp>2023-5-4T15:53:42</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="threebitadder" name="XLXI_1">
            <blockpin signalname="Ain(2:0)" name="Ain(2:0)" />
            <blockpin signalname="Bin(2:0)" name="Bin(2:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="Sout(3:0)" />
        </block>
        <block symbolname="sevseg" name="XLXI_2">
            <blockpin signalname="XLXN_3(3:0)" name="A(3:0)" />
            <blockpin signalname="S(7:0)" name="S(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1568" y="1024" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2160" y="960" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Ain(2:0)">
            <wire x2="1568" y1="928" y2="928" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="1536" y="928" name="Ain(2:0)" orien="R180" />
        <branch name="Bin(2:0)">
            <wire x2="1568" y1="992" y2="992" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="1536" y="992" name="Bin(2:0)" orien="R180" />
        <branch name="XLXN_3(3:0)">
            <wire x2="2160" y1="928" y2="928" x1="1952" />
        </branch>
        <branch name="S(7:0)">
            <wire x2="2576" y1="928" y2="928" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2576" y="928" name="S(7:0)" orien="R0" />
    </sheet>
</drawing>