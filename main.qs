namespace QuantumApp {
    import Std.Diagnostics.*;
    @EntryPoint()
    operation QuantumR() : String {
        Message("Welcome to the QuantumApp.");
        Message("Here are the probabilities:");
        use q = Qubit();
        H(q);
        DumpMachine();
        let m = M(q);
        Reset(q);
        if (m == One) {
            Message("-----> The random result this time is 1. <-----");
        } else {
            Message("-----> The random result this time is 0. <-----");
        }
        return ("Program has finished.");
    }
}