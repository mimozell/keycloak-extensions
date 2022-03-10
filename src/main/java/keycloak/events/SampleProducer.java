package keycloak.events;

public class SampleProducer {
    public void putUserEvents() {
        String[] args = {"userevents-local", "eu-west-1", "100"};
        SampleProducerConfig config = new SampleProducerConfig(args);
    }
}
