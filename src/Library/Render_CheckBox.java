/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Library;

import java.awt.Color;
import java.awt.Component;
import javax.swing.JCheckBox;
import javax.swing.JComponent;
import javax.swing.JTable;
import javax.swing.table.TableCellRenderer;

/**
 *
 * @author USER
 */
public class Render_CheckBox extends JCheckBox implements TableCellRenderer{    
    
    private JComponent component = new JCheckBox();
    
    public Render_CheckBox(){
        setOpaque(true);
    }
    @Override
    public Component getTableCellRendererComponent(JTable table, Object value, boolean isSelected, boolean hasFocus, int row, int column) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        ((JCheckBox) component).setBackground(new Color(0,200,0));
        //obtiene valor boolean y coloca valor en el JCheckbox
        boolean b = ((Boolean) value).booleanValue();
        ((JCheckBox) component).setSelected(b);
        return ( (JCheckBox) component);
    }
    
}
