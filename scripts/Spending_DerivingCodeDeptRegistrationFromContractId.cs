#region Help:  Introduction to the Script Component
/* The Script Component allows you to perform virtually any operation that can be accomplished in
 * a .Net application within the context of an Integration Services data flow.
 *
 * Expand the other regions which have "Help" prefixes for examples of specific ways to use
 * Integration Services features within this script component. */
#endregion

#region Namespaces
using System;
using System.Data;
using Microsoft.SqlServer.Dts.Pipeline.Wrapper;
using Microsoft.SqlServer.Dts.Runtime.Wrapper;
using System.Windows.Forms;
#endregion

/// <summary>
/// This is the class to which to add your code.  Do not change the name, attributes, or parent
/// of this class.
/// </summary>
[Microsoft.SqlServer.Dts.Pipeline.SSISScriptComponentEntryPointAttribute]
public class ScriptMain : UserComponent
{
    #region Help:  Using Integration Services variables and parameters
    /* To use a variable in this script, first ensure that the variable has been added to
     * either the list contained in the ReadOnlyVariables property or the list contained in
     * the ReadWriteVariables property of this script component, according to whether or not your
     * code needs to write into the variable.  To do so, save this script, close this instance of
     * Visual Studio, and update the ReadOnlyVariables and ReadWriteVariables properties in the
     * Script Transformation Editor window.
     * To use a parameter in this script, follow the same steps. Parameters are always read-only.
     *
     * Example of reading from a variable or parameter:
     *  DateTime startTime = Variables.MyStartTime;
     *
     * Example of writing to a variable:
     *  Variables.myStringVariable = "new value";
     */
    #endregion

    #region Help:  Using Integration Services Connnection Managers
    /* Some types of connection managers can be used in this script component.  See the help topic
     * "Working with Connection Managers Programatically" for details.
     *
     * To use a connection manager in this script, first ensure that the connection manager has
     * been added to either the list of connection managers on the Connection Managers page of the
     * script component editor.  To add the connection manager, save this script, close this instance of
     * Visual Studio, and add the Connection Manager to the list.
     *
     * If the component needs to hold a connection open while processing rows, override the
     * AcquireConnections and ReleaseConnections methods.
     * 
     * Example of using an ADO.Net connection manager to acquire a SqlConnection:
     *  object rawConnection = Connections.SalesDB.AcquireConnection(transaction);
     *  SqlConnection salesDBConn = (SqlConnection)rawConnection;
     *
     * Example of using a File connection manager to acquire a file path:
     *  object rawConnection = Connections.Prices_zip.AcquireConnection(transaction);
     *  string filePath = (string)rawConnection;
     *
     * Example of releasing a connection manager:
     *  Connections.SalesDB.ReleaseConnection(rawConnection);
     */
    #endregion

    #region Help:  Firing Integration Services Events
    /* This script component can fire events.
     *
     * Example of firing an error event:
     *  ComponentMetaData.FireError(10, "Process Values", "Bad value", "", 0, out cancel);
     *
     * Example of firing an information event:
     *  ComponentMetaData.FireInformation(10, "Process Values", "Processing has started", "", 0, fireAgain);
     *
     * Example of firing a warning event:
     *  ComponentMetaData.FireWarning(10, "Process Values", "No rows were received", "", 0);
     */
    #endregion

    /// <summary>
    /// This method is called once, before rows begin to be processed in the data flow.
    ///
    /// You can remove this method if you don't need to do anything here.
    /// </summary>
    public override void PreExecute()
    {
        base.PreExecute();
        /*
         * Add your code here
         */
    }

    /// <summary>
    /// This method is called after all the rows have passed through this component.
    ///
    /// You can delete this method if you don't need to do anything here.
    /// </summary>
    public override void PostExecute()
    {
        base.PostExecute();
        /*
         * Add your code here
         */
    }

    /// <summary>
    /// This method is called once for every row that passes through the component from Input0.
    ///
    /// Example of reading a value from a column in the the row:
    ///  string zipCode = Row.ZipCode
    ///
    /// Example of writing a value to a column in the row:
    ///  Row.ZipCode = zipCode
    /// </summary>
    /// <param name="Row">The row that is currently passing through the component</param>
    public override void Input0_ProcessInputRow(Input0Buffer Row)
    {
        /*
         * Add your code here
         */
        string contractid = Row.contractid;
        try
        {
            if (contractid != null && contractid.Length >= 17)
            {
                if (contractid.Substring(0,3) == "CT1")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,3);
                    Row.DeptSTAGINGDerived = contractid.Substring(3,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(6,11);
                }
                else if (contractid.Substring(0,3) == "DO1")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,3);
                    Row.DeptSTAGINGDerived = contractid.Substring(3,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(6,11);
                }
                else if (contractid.Substring(0,4) == "CTA1")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,4);
                    Row.DeptSTAGINGDerived = contractid.Substring(4,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(7,11);
                }
                else if (contractid.Substring(0,4) == "RCT1")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,4);
                    Row.DeptSTAGINGDerived = contractid.Substring(4,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(7,11);
                }
                else if (contractid.Substring(0,4) == "MMA1")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,4);
                    Row.DeptSTAGINGDerived = contractid.Substring(4,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(7,11);
                }
                else if (contractid.Substring(0,4) == "PON1")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,4);
                    Row.DeptSTAGINGDerived = contractid.Substring(4,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(7,11);
                }
                else if (contractid.Substring(0,3) == "POC")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,3);
                    Row.DeptSTAGINGDerived = contractid.Substring(3,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(6,11);
                }
                else if (contractid.Substring(0,3) == "POD")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,3);
                    Row.DeptSTAGINGDerived = contractid.Substring(3,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(6, 11);
                }
                else if (contractid.Substring(0,4) == "PRC2")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,4);
                    Row.DeptSTAGINGDerived = contractid.Substring(4,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(7,11);
                }
                else if (contractid.Substring(0,4) == "CTA2")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,4);
                    Row.DeptSTAGINGDerived = contractid.Substring(4,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(7,11);
                }
                else if (contractid.Substring(0,4) == "PCC1")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,4);
                    Row.DeptSTAGINGDerived = contractid.Substring(4,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(7,11);
                }
                else if (contractid.Substring(0,4) == "PRM1")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,4);
                    Row.DeptSTAGINGDerived = contractid.Substring(4,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(7,11);
                }
                else if (contractid.Substring(0,5) == "RTGPF")
                {
                    Row.CodeSTAGINGDerived = contractid.Substring(0,5);
                    Row.DeptSTAGINGDerived = contractid.Substring(5,3);
                    Row.RegistrationSTAGINGDerived = contractid.Substring(8,11);
                }
                else
                {
                    Row.CodeSTAGINGDerived = "ERROR: [contractid] doesn't match any valid contractid prefix";
                    Row.DeptSTAGINGDerived = "ERROR: [contractid] doesn't match any valid contractid prefix";
                    Row.RegistrationSTAGINGDerived = "ERROR: [contractid] doesn't match any valid contractid prefix";
                }

            }
            else if (contractid != null && contractid.Length < 17) 
            {
                Row.CodeSTAGINGDerived = "ERROR: contractid.Length is less than 17";
                Row.DeptSTAGINGDerived = "ERROR: contractid.Length is less than 17";
                Row.RegistrationSTAGINGDerived = "ERROR: contractid.Length is less than 17";
            }
            else if (contractid == null)
            {
                Row.CodeSTAGINGDerived = null;
                Row.DeptSTAGINGDerived = null;
                Row.RegistrationSTAGINGDerived = null;
            }
            else
            {
                Row.CodeSTAGINGDerived = "ERROR: contractid is not null, but unsure how to process it";
                Row.DeptSTAGINGDerived = "ERROR: contractid is not null, but unsure how to process it";
                Row.RegistrationSTAGINGDerived = "ERROR: contractid is not null, but unsure how to process it";
            }
        }
        catch (Exception ex) {
            Row.CodeSTAGINGDerived = "ERROR: an exception has occured";
            Row.DeptSTAGINGDerived = "ERROR: an exception has occured";
            Row.RegistrationSTAGINGDerived = "ERROR: an exception has occured";
            //MessageBox.Show(ex.ToString());
        }
    }

}
